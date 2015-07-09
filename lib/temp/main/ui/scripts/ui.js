requirejs.config({
    baseUrl: "/scripts/ui/",
    paths: {
        jquery: "/scripts/lib/jQuery_1.8.2.min",
        jqueryui: "/scripts/lib/jquery-ui"
    }
});

if (window.scriptComplete && typeof scriptComplete === "function") {
    scriptComplete();
}
