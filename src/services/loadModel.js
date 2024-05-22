require("dotenv").config();

const tf = require("@tensorflow/tfjs-node");
async function loadModel() {
    return tf.loadGraphModel("https://storage.googleapis.com/model-storage-ismail/submissions-model/model.json");
}
module.exports = loadModel;
