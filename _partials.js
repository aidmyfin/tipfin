/* Reusable HTML partials injected by data-include attributes */
(function(){
  const HEADER = `
  <header class="app-header">
    <div class="container row">
      <a class="brand" href="index.html">
        <img src="logo.png" alt="TipFin"/>
        <div>
          <div class="name">TIPFIN</div>
          <div class="tag">Smart Lending</div>
        </div>
      </a>
      <nav class="nav-desktop">
        <a data-nav="index.html" href="index.html">Home</a>
        <a data-nav="loans.html" href="loans.html">Loan Products</a>
        <a data-nav="about.html" href="about.html">About</a>
        <a data-nav="faq.html" href="faq.html">FAQ</a>
        <a data-nav="contact.html" href="contact.html">Contact</a>
      </nav>
      <div class="header-cta">
        <a class="btn btn-ghost" href="login.html">Sign in</a>
        <a class="btn btn-primary" href="register.html">Get started</a>
      </div>
    </div>
  </header>`;

  const TABS = `
  <nav class="mobile-tabs" aria-label="Mobile navigation">
    <a data-nav="index.html" href="index.html">
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"><path d="M3 11.5L12 4l9 7.5"/><path d="M5 10v10h14V10"/></svg>
      Home
    </a>
    <a data-nav="loans.html" href="loans.html">
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="6" width="18" height="13" rx="2"/><path d="M3 10h18"/></svg>
      Loans
    </a>
    <a data-nav="apply.html" href="apply.html">
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="9"/><path d="M12 8v8M8 12h8"/></svg>
      Apply
    </a>
    <a data-nav="dashboard.html" href="dashboard.html">
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="3" width="8" height="9" rx="1"/><rect x="13" y="3" width="8" height="5" rx="1"/><rect x="13" y="10" width="8" height="11" rx="1"/><rect x="3" y="14" width="8" height="7" rx="1"/></svg>
      Dashboard
    </a>
    <a data-nav="profile.html" href="profile.html">
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="8" r="4"/><path d="M4 21c1.5-4 4.5-6 8-6s6.5 2 8 6"/></svg>
      Profile
    </a>
  </nav>`;

  const FOOTER = `
  <footer class="footer">
    <div class="container">
      <div class="grid">
        <div>
          <a class="brand" style="color:#fff" href="index.html">
            <img src="logo.png" alt="TipFin"/>
            <div>
              <div class="name">TIPFIN (PTY) LTD</div>
              <div class="tag" style="color:#9aa6b6">Smart Lending</div>
            </div>
          </a>
          <p style="color:#9aa6b6;margin-top:14px;max-width:380px">
            Next-generation digital lending. Apply online, upload documents, track every step
            from your secure dashboard.
          </p>
          <p style="color:#9aa6b6;margin-top:6px;font-size:.85rem">
            NCR Reg No: <strong style="color:#fff">NCRCP22024</strong><br/>
            Legal Reg No: <strong style="color:#fff">2024/669652/07</strong><br/>
            Email: <a href="mailto:info.tipfin@aol.com">info.tipfin@aol.com</a>
          </p>
        </div>
        <div>
          <h4>Quick Links</h4>
          <a href="index.html">Home</a>
          <a href="apply.html">Apply</a>
          <a href="about.html">About</a>
          <a href="loans.html">Loan Types</a>
          <a href="contact.html">Contact</a>
        </div>
        <div>
          <h4>Loan Products</h4>
          <a href="loans.html">Personal Loans</a>
          <a href="loans.html">Business Loans</a>
          <a href="loans.html">Vehicle Loans</a>
          <a href="loans.html">Debt Consolidation</a>
          <a href="loans.html">Education Loans</a>
        </div>
        <div>
          <h4>Support</h4>
          <a href="faq.html">FAQs</a>
          <a href="contact.html">Privacy Policy</a>
          <a href="contact.html">Terms of Service</a>
          <a href="contact.html">PAIA Manual</a>
          <a href="contact.html">Complaints</a>
        </div>
      </div>
      <div class="legal">
        <div>© <span data-year></span> TIPFIN (PTY) LTD. All rights reserved.</div>
        <div>Application & Approval are automated. Final payout completed via TIPFIN (PTY) LTD.</div>
      </div>
    </div>
  </footer>`;

  function inject(){
    document.querySelectorAll("[data-include='header']").forEach(el=>el.outerHTML=HEADER);
    document.querySelectorAll("[data-include='tabs']").forEach(el=>el.outerHTML=TABS);
    document.querySelectorAll("[data-include='footer']").forEach(el=>el.outerHTML=FOOTER);
  }
  inject();
})();
