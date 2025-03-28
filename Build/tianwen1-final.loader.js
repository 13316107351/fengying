function createUnityInstance(canvas, config, onProgress) {
  var script = document.createElement("script");
  script.src = config.frameworkUrl;
  script.onload = function () {
    var unityModule = {
      preRun: [],
      postRun: [],
      print: function (text) {
        console.log(text);
      },
      canvas: canvas,
      locateFile: function (url) {
        return url;
      }
    };

    canvas.className = "unity-canvas";
    var loadingInfo = document.createElement("div");
    loadingInfo.innerText = "Loading Unity WebGL...";
    canvas.parentNode.insertBefore(loadingInfo, canvas.nextSibling);

    var scriptWasm = document.createElement("script");
    scriptWasm.src = config.codeUrl;
    scriptWasm.onload = function () {
      loadingInfo.innerText = "WASM loaded.";
      if (typeof onProgress === "function") {
        onProgress({ progress: 1.0 });
      }
      console.log("Unity instance simulated (framework/wasm loaded).");
    };
    document.body.appendChild(scriptWasm);
  };
  document.body.appendChild(script);

  return new Promise(function (resolve) {
    resolve({ SendMessage: function () {}, Quit: function () {} });
  });
}
