//init
(function(window){
    android = {};
    android["jeejen"] = window["android.jeejen"];
    android["system"] = window["android.system"];
    android["app"] = window["android.app"];
    android["test"] = window["android.test"];
    phone = {
        define: function(id, factory) {
            this[id] = factory;
        }
    };
}(window));
phone.define("jeejen", {
    getArgTypeAt : function(seed, index) {
        return android.jeejen.getArgTypeAt(seed, index);
    },
    getArgValueAt : function(seed, index) {
        var type = phone.jeejen.getArgTypeAt(seed, index);
        alert("type="+type);
        if (type == null) {
            return android.jeejen.getArgValueAt(seed, index);
        }
        type = type.toLowerCase();
        if (type.indexOf("string")) {
            return android.jeejen.getArgStringValueAt(seed, index);
        } else if (type.indexOf("int")) {
            return android.jeejen.getArgIntValueAt(seed, index);
        } else if (type.indexOf("long")) {
            return android.jeejen.getArgLongValueAt(seed, index);
        } else if (type.indexOf("float")) {
            return android.jeejen.getArgFloatValueAt(seed, index);
        } else if (type.indexOf("double")) {
            return android.jeejen.getArgDoubleValueAt(seed, index);
        } else if (type.indexOf("char")) {
            return android.jeejen.getArgCharValueAt(seed, index);
        } else if (type.indexOf("short")) {
            return android.jeejen.getArgShortValueAt(seed, index);
        } else if (type.indexOf("byte")) {
            return android.jeejen.getArgByteValueAt(seed, index);
        }
    },
    getArgStringValueAt : function(seed, index) {
        return android.jeejen.getArgStringValueAt(seed, index);
    },
    getArgIntValueAt : function(seed, index) {
        return android.jeejen.getArgIntValueAt(seed, index);
    },
    getArgLongValueAt : function(seed, index) {
        return android.jeejen.getArgLongValueAt(seed, index);
    },
    getArgFloatValueAt : function(seed, index) {
        return android.jeejen.getArgFloatValueAt(seed, index);
    },
    getArgDoubleValueAt : function(seed, index) {
        return android.jeejen.getArgDoubleValueAt(seed, index);
    },
    getArgByteValueAt : function(seed, index) {
        return android.jeejen.getArgByteValueAt(seed, index);
    },
    getArgCharValueAt : function(seed, index) {
        return android.jeejen.getArgCharValueAt(seed, index);
    },
    getArgShortValueAt : function(seed, index) {
        return android.jeejen.getArgShortValueAt(seed, index);
    },
    clearArgs : function(seed) {
        return android.jeejen.clearArgs(seed);
    },
    newList : function() {
        return android.jeejen.newList();
    },
    addToList : function(list, obj) {
        android.jeejen.addToList(list, obj);
    },
    getClassByName : function(className) {
        alert("getClassByName");
        return android.jeejen.getClassByName(className);
    },
    getMethod : function (className, method, parameterTypes) {
        alert("getMethod");
        return android.jeejen.getMethod(className, method, parameterTypes);
    },
    getDeclaredMethod : function(className, method, parameterTypes) {
        alert("getDeclaredMethod");
        return android.jeejen.getMethod(className, method, parameterTypes);
    },
    getDeclaredField : function(className, fieldName) {
        alert("getDeclaredField");
        return android.jeejen.getDeclaredField(className, fieldName);
    },
    getField : function(className, fieldName) {
        alert("getField");
        return android.jeejen.getField(className, fieldName);
    },
    getConstructor : function(className, parameterTypes) {
        alert("getConstructor");
        return android.jeejen.getConstructor(className, parameterTypes);
    },
    newInstance : function(className) {
        alert("newInstance");
        return android.jeejen.newInstance(className);
    },
    newInstanceByCtor : function(ctor, ctorAgrs) {
        alert("newInstanceByCtor");
        return android.jeejen.newInstanceByCtor(ctor, ctorArgs);
    },
    invokeField : function(field, obj) {
        alert("invokeField");
        return android.jeejen.invokeField(field, obj);
    },
    invokeMethod : function(method, obj, methodArgs, callback) {
        alert("invokeMethod");
        return android.jeejen.invokeMethod(method, obj, methodArgs, callback);
    },
    invokeModifyField: function(field, obj, value) {
        alert("invokeModifyField");
        return android.jeejen.invokeModifyField(field, obj, value);
    },
    newProxyInstance : function(interfaceClass, callbacks) {
        alert("newProxyInstance");
        var strCallbacks = JSON.stringify(callbacks);
        alert(strCallbacks);
        return android.jeejen.newProxyInstance(interfaceClass, strCallbacks);
    },
});
phone.define("app", {
    getIntent : function(json) {
        var obj = android.app.getIntent(json);
        return obj;
    },
    startActivity : function(json) {
        alert(JSON.stringify(json));
        var strIntent = JSON.stringify(json);
        var intent = phone.app.getIntent(strIntent);
        android.app.startActivity(intent);
    }
});
phone.define("system", {
    getStatusHeight : function() {
        return android.system.getStatusBarHeight();
    }
});
phone.define("test", {
    getClassLoader : function() {
        return android.test.getClassLoader();
    },
    invokeTestInterface: function(obj) {
        alert("invokeTestInterface");
        return android.test.invokeTestInterface(obj);
    }
});