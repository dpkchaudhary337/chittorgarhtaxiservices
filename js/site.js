(function () {
    'use strict';

    var header = document.getElementById('siteHeader');
    var toTop = document.getElementById('toTop');

    function onScroll() {
        var y = window.pageYOffset || document.documentElement.scrollTop;
        if (header) header.classList.toggle('is-scrolled', y > 10);
        if (toTop) toTop.classList.toggle('is-visible', y > 600);
    }
    window.addEventListener('scroll', onScroll, { passive: true });
    onScroll();

    if (toTop) {
        toTop.addEventListener('click', function (e) {
            e.preventDefault();
            window.scrollTo({ top: 0, behavior: 'smooth' });
        });
    }

    // Collapse the mobile menu after a link is chosen.
    if (window.jQuery) {
        jQuery('#mainNav .nav-link').on('click', function () {
            var nav = jQuery('#mainNav');
            if (nav.hasClass('show')) nav.collapse('hide');
        });
    }

    function animateCounter(el) {
        var target = parseInt(el.getAttribute('data-count'), 10) || 0;
        var suffix = el.getAttribute('data-suffix') || '';
        var duration = 1600;
        var start = null;
        function step(ts) {
            if (!start) start = ts;
            var progress = Math.min((ts - start) / duration, 1);
            var eased = 1 - Math.pow(1 - progress, 3);
            el.textContent = Math.floor(eased * target).toLocaleString('en-IN') + suffix;
            if (progress < 1) window.requestAnimationFrame(step);
        }
        window.requestAnimationFrame(step);
    }

    var counters = document.querySelectorAll('[data-count]');
    var reveals = document.querySelectorAll('.reveal');

    if ('IntersectionObserver' in window) {
        var io = new IntersectionObserver(function (entries) {
            entries.forEach(function (entry) {
                if (!entry.isIntersecting) return;
                var el = entry.target;
                if (el.hasAttribute('data-count')) animateCounter(el);
                el.classList.add('is-visible');
                io.unobserve(el);
            });
        }, { threshold: 0.15 });
        Array.prototype.forEach.call(counters, function (el) { io.observe(el); });
        Array.prototype.forEach.call(reveals, function (el) { io.observe(el); });
    } else {
        Array.prototype.forEach.call(counters, function (el) {
            el.textContent = el.getAttribute('data-count') + (el.getAttribute('data-suffix') || '');
        });
        Array.prototype.forEach.call(reveals, function (el) { el.classList.add('is-visible'); });
    }
})();

// Called from server-side startup script after a successful booking enquiry.
function openPopup() {
    if (window.jQuery) jQuery('#bookingModal').modal('show');
}
