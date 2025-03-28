// Unity loader logic
console.log('✅ Loader script loaded');
createUnityInstance(document.querySelector("#unityContainer"), {
  dataUrl: "Build/tianwen1-final.data",
  frameworkUrl: "Build/tianwen1-final.framework.js",
  codeUrl: "Build/tianwen1-final.wasm",
  streamingAssetsUrl: "StreamingAssets",
  companyName: "Guangzhou No.17",
  productName: "Tianwen-1 Simulation",
  productVersion: "1.0"
});
