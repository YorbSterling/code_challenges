// This problem was asked by Facebook.
// Given a function f, and N return a debounced f of N milliseconds.
// That is, as long as the debounced f continues to be invoked, f itself will not be called for N milliseconds.

const debounce = (fn, time) => {
    let timeout;

    return function() {
        const functionCall = () => fn.apply(this, arguments);

        clearTimeout(timeout);
        timeout = setTimeout(functionCall, time);
    };
};

const debounced_func = debounce(f, N);
