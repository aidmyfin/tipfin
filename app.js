/* =========================================================
   TIPFIN — shared app logic
   - Mobile bottom nav active state
   - Reveal-on-scroll animation
   - Baserow integration (signup, login lookup, apply update)
   - LocalStorage session
   ========================================================= */

const TIPFIN = {
  BASEROW_TOKEN: "LG6hnTBxgBG78FueElsSwpHRd4Wep1oL",
  TABLE_ID: 936442,
  API: "https://api.baserow.io/api/database/rows/table/936442/",
};

/* ---------- Active nav highlight ---------- */
(function highlightNav(){
  const path = (location.pathname.split("/").pop() || "index.html").toLowerCase();
  document.querySelectorAll("[data-nav]").forEach(a=>{
    const target = (a.getAttribute("data-nav")||"").toLowerCase();
    if (target === path || (target === "index.html" && path === "")) {
      a.classList.add("active");
    }
  });
})();

/* ---------- Reveal on scroll ---------- */
(function reveal(){
  const obs = new IntersectionObserver(entries=>{
    entries.forEach(e=>{
      if (e.isIntersecting){ e.target.classList.add("in"); obs.unobserve(e.target); }
    });
  },{threshold:.12});
  document.querySelectorAll(".reveal").forEach(el=>obs.observe(el));
})();

/* ---------- Session helpers ---------- */
const Session = {
  get(){
    try { return JSON.parse(localStorage.getItem("tipfin_user") || "null"); }
    catch { return null; }
  },
  set(u){ localStorage.setItem("tipfin_user", JSON.stringify(u)); },
  clear(){ localStorage.removeItem("tipfin_user"); },
  requireAuth(redirect="login.html"){
    const u = Session.get();
    if (!u) { location.href = redirect; }
    return u;
  }
};
window.TIPFIN_SESSION = Session;

/* ---------- Baserow API helpers ---------- */
async function baserowRequest(path, opts={}){
  const url = path.startsWith("http") ? path : TIPFIN.API + path;
  const res = await fetch(url, {
    ...opts,
    headers: {
      "Authorization": "Token " + TIPFIN.BASEROW_TOKEN,
      "Content-Type": "application/json",
      ...(opts.headers||{})
    }
  });
  if (!res.ok){
    const txt = await res.text().catch(()=> "");
    throw new Error("Baserow error "+res.status+": "+txt.slice(0,200));
  }
  return res.json();
}

/* Look up a user by email (and optionally idNo for login) */
async function findUserByEmail(email){
  const params = new URLSearchParams({
    user_field_names: "true",
    "filter__Email__equal": email
  });
  const data = await baserowRequest("?"+params.toString());
  return data.results && data.results[0] ? data.results[0] : null;
}

async function findUserByEmailAndId(email, idNo){
  const params = new URLSearchParams({
    user_field_names: "true",
    "filter__Email__equal": email,
    "filter__idNo__equal": idNo,
  });
  const data = await baserowRequest("?"+params.toString());
  return data.results && data.results[0] ? data.results[0] : null;
}

async function createUserRow(payload){
  const params = new URLSearchParams({ user_field_names: "true" });
  return baserowRequest("?"+params.toString(), {
    method: "POST",
    body: JSON.stringify(payload)
  });
}

async function updateUserRow(rowId, payload){
  const params = new URLSearchParams({ user_field_names: "true" });
  return baserowRequest(rowId+"/?"+params.toString(), {
    method: "PATCH",
    body: JSON.stringify(payload)
  });
}

window.TIPFIN_API = { findUserByEmail, findUserByEmailAndId, createUserRow, updateUserRow };

/* ---------- Toast (simple) ---------- */
function toast(msg, kind="info"){
  let host = document.getElementById("toast-host");
  if (!host){
    host = document.createElement("div");
    host.id="toast-host";
    Object.assign(host.style,{position:"fixed",top:"18px",left:"50%",transform:"translateX(-50%)",
      zIndex:9999,display:"flex",flexDirection:"column",gap:"10px"});
    document.body.appendChild(host);
  }
  const colors = {info:"#0ea5e9", ok:"#16a34a", err:"#d8362a"};
  const t = document.createElement("div");
  t.textContent = msg;
  Object.assign(t.style,{
    background:"#fff", color:"#0f1620", padding:"12px 16px", borderRadius:"12px",
    boxShadow:"0 20px 40px -12px rgba(15,22,32,.25)", borderLeft:"4px solid "+(colors[kind]||colors.info),
    fontWeight:"600", fontSize:".92rem", maxWidth:"min(92vw, 380px)"
  });
  host.appendChild(t);
  setTimeout(()=>{ t.style.transition=".4s"; t.style.opacity="0"; t.style.transform="translateY(-10px)"; },2800);
  setTimeout(()=>t.remove(), 3300);
}
window.tipfinToast = toast;

/* ---------- Year stamp in footers ---------- */
document.querySelectorAll("[data-year]").forEach(el=>el.textContent = new Date().getFullYear());
