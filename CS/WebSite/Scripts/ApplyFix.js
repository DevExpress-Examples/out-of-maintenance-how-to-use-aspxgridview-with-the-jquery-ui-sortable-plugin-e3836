var isDXScript = function(script) {
    return script && script.id && script.id.indexOf("dx") === 0;
}

if ($.clean) {
    var originalClean = $.clean;

    $.clean = function(elems, context, fragment, scripts) {
        var execResult = originalClean.call($, elems, context, fragment, scripts);
        if (scripts && scripts.length) {
            for (var i = scripts.length - 1; i >= 0; i--) {
                if (isDXScript(scripts[i]))
                    scripts.splice(i, 1);
            }
        }
        return execResult;
    };
}