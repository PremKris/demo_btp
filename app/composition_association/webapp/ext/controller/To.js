sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        Tomethod: function(oEvent) {
            MessageToast.show("Welcome To Capire.");
            window.location.href = "https://cap.cloud.sap/docs/";
        }
    };
});
