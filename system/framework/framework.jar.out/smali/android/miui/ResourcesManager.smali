.class public Landroid/miui/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field private static final FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

.field private static final MIUI_FRAMEWORK_RES_DATA_PATH_1:Ljava/lang/String; = "/data/app/com.miui.system-1.apk"

.field private static final MIUI_FRAMEWORK_RES_DATA_PATH_2:Ljava/lang/String; = "/data/app/com.miui.system-2.apk"

.field private static final MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

.field private static final MIUI_SDK_RES_DATA_PATH_1:Ljava/lang/String; = "/data/app/com.miui.core-1.apk"

.field private static final MIUI_SDK_RES_DATA_PATH_2:Ljava/lang/String; = "/data/app/com.miui.core-2.apk"

.field private static final MIUI_SDK_RES_PATH:Ljava/lang/String;

.field private static final VERSION_ABOVE_5:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    .line 17
    sget-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_1

    const-string v0, "/system/app/miui/miui.apk"

    :goto_1
    sput-object v0, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    .line 23
    sget-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_2

    const-string v0, "/system/app/miuisystem/miuisystem.apk"

    :goto_2
    sput-object v0, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    .line 29
    sget-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_3

    const-string v0, "/system/framework/framework-ext-res/framework-ext-res.apk"

    :goto_3
    sput-object v0, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 17
    :cond_1
    const-string v0, "/system/app/miui.apk"

    goto :goto_1

    .line 23
    :cond_2
    const-string v0, "/system/app/miuisystem.apk"

    goto :goto_2

    .line 29
    :cond_3
    const-string v0, "/system/framework/framework-ext-res.apk"

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSystemAssets(Landroid/content/res/AssetManager;)V
    .locals 2
    .param p0, "am"    # Landroid/content/res/AssetManager;

    .prologue
    .line 34
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/com.miui.core-1.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "/data/app/com.miui.core-1.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 42
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/com.miui.system-1.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    const-string v0, "/data/app/com.miui.system-1.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 50
    :goto_1
    sget-object v0, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 51
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/com.miui.core-2.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    const-string v0, "/data/app/com.miui.core-2.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/com.miui.system-2.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    const-string v0, "/data/app/com.miui.system-2.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_1

    .line 47
    :cond_3
    sget-object v0, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static belongToMiuiFrameworkThemePath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiExtFrameworkPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiSystemSdkPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiSdkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initMiuiResource(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 55
    instance-of v0, p0, Landroid/content/res/MiuiResources;

    if-eqz v0, :cond_0

    .line 56
    check-cast p0, Landroid/content/res/MiuiResources;

    .end local p0    # "res":Landroid/content/res/Resources;
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static isMiuiExtFrameworkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v0, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMiuiSdkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-object v0, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/data/app/com.miui.core-1.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/data/app/com.miui.core-2.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMiuiSystemSdkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v0, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/data/app/com.miui.system-1.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/data/app/com.miui.system-2.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
