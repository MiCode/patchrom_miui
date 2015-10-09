.class public Landroid/app/MiuiThemeHelper;
.super Ljava/lang/Object;
.source "MiuiThemeHelper.java"


# static fields
.field private static final ICON_THEME:Ljava/lang/String; = "/data/system/theme/icons"

.field public static final MIUI_RES_PATH:Ljava/lang/String; = "/system/framework/framework-miui-res.apk"

.field private static final MIUI_SCREENSHOT_MODE_RES_PATH:Ljava/lang/String; = "/data/system/themeScreenshotMode"

.field public static final sExcluedList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    .line 38
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.docs"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.plus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.play.games"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.videos"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .locals 1
    .param p0, "am"    # Landroid/content/res/AssetManager;

    .prologue
    .line 106
    const-string v0, "/system/framework/framework-miui-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public static canKeepActivityAlive(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "changes"    # I
    .param p2, "oldConfig"    # Landroid/content/res/Configuration;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 136
    const/high16 v4, -0x80000000

    if-ne p1, v4, :cond_1

    .line 137
    iget-object v1, p2, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    .line 138
    .local v1, "oldThemeConfig":Landroid/content/res/MiuiConfiguration;
    iget-object v0, p3, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    .line 139
    .local v0, "newThemeConfig":Landroid/content/res/MiuiConfiguration;
    iget v4, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v5, v1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sub-int/2addr v4, v5

    if-ne v4, v2, :cond_1

    .line 140
    iget-wide v4, v0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-static {p0, v4, v5}, Landroid/content/res/MiuiConfiguration;->needRestartActivity(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 143
    .end local v0    # "newThemeConfig":Landroid/content/res/MiuiConfiguration;
    .end local v1    # "oldThemeConfig":Landroid/content/res/MiuiConfiguration;
    :goto_0
    return v2

    .restart local v0    # "newThemeConfig":Landroid/content/res/MiuiConfiguration;
    .restart local v1    # "oldThemeConfig":Landroid/content/res/MiuiConfiguration;
    :cond_0
    move v2, v3

    .line 140
    goto :goto_0

    .end local v0    # "newThemeConfig":Landroid/content/res/MiuiConfiguration;
    .end local v1    # "oldThemeConfig":Landroid/content/res/MiuiConfiguration;
    :cond_1
    move v2, v3

    .line 143
    goto :goto_0
.end method

.method public static copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "srcConfig"    # Landroid/content/res/Configuration;
    .param p1, "desConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 110
    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget v1, v1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iput v1, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 111
    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    .end local p0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v4

    .line 64
    .restart local p0    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-static {}, Landroid/app/MiuiThemeHelper;->isInternationalBuildWithDefaultTheme()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1}, Landroid/app/MiuiThemeHelper;->isExcluedPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 68
    :cond_2
    const/4 v1, 0x0

    .line 70
    .local v1, "apm":Landroid/app/ApplicationPackageManager;
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/ApplicationPackageManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 76
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_7

    .line 84
    if-nez p4, :cond_3

    .line 86
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p4

    .line 90
    :cond_3
    :goto_1
    if-eqz p3, :cond_6

    if-eqz p4, :cond_4

    iget v4, p4, Landroid/content/pm/ApplicationInfo;->icon:I

    if-ne p3, v4, :cond_5

    :cond_4
    if-nez p2, :cond_6

    .line 91
    :cond_5
    invoke-virtual {p0, p1, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 93
    :cond_6
    instance-of v4, p0, Landroid/app/ApplicationPackageManager;

    if-eqz v4, :cond_7

    .line 94
    check-cast p0, Landroid/app/ApplicationPackageManager;

    .end local p0    # "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getContext()Landroid/app/ContextImpl;

    move-result-object v4

    invoke-static {v4, p1, p2, v2}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    :cond_7
    move-object v4, v2

    .line 102
    goto :goto_0

    .line 71
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 72
    .local v3, "e":Ljava/lang/ClassCastException;
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 87
    .end local v3    # "e":Ljava/lang/ClassCastException;
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V
    .locals 6
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const-wide/16 v4, 0x0

    .line 114
    const/high16 v2, -0x80000000

    and-int/2addr v2, p0

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-wide v0, v2, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 117
    .local v0, "flag":J
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 118
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 119
    invoke-static {p1}, Lmiui/content/res/ThemeFontChangeHelper;->quitProcessIfNeed(Landroid/content/res/Configuration;)V

    .line 120
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 121
    invoke-static {}, Landroid/view/ExtraGLES20Canvas;->freeCaches()V

    .line 123
    :cond_0
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 124
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 127
    .end local v0    # "flag":J
    :cond_1
    return-void
.end method

.method public static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 130
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0, p1}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    .line 133
    :cond_0
    return-void
.end method

.method public static isExcluedPackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Landroid/app/MiuiThemeHelper;->sExcluedList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInternationalBuildWithDefaultTheme()Z
    .locals 2

    .prologue
    .line 53
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/icons"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScreenshotMode()Z
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 24
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v14, -0x4

    .line 148
    .local v14, "intPos":I
    const/4 v5, -0x3

    .line 149
    .local v5, "dotPos":I
    const/4 v12, -0x2

    .line 150
    .local v12, "fractionPos":I
    const/16 v18, -0x1

    .line 151
    .local v18, "unitPos":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_3

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 153
    .local v3, "c":C
    const/16 v20, -0x4

    move/from16 v0, v20

    if-ne v14, v0, :cond_0

    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v3, v0, :cond_0

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v3, v0, :cond_0

    .line 154
    move v14, v13

    .line 156
    :cond_0
    const/16 v20, -0x3

    move/from16 v0, v20

    if-ne v5, v0, :cond_1

    const/16 v20, 0x2e

    move/from16 v0, v20

    if-ne v3, v0, :cond_1

    .line 157
    move v5, v13

    .line 159
    :cond_1
    const/16 v20, -0x3

    move/from16 v0, v20

    if-eq v5, v0, :cond_2

    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v3, v0, :cond_2

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v3, v0, :cond_2

    .line 160
    move v12, v13

    .line 162
    :cond_2
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/16 v20, 0x61

    move/from16 v0, v20

    if-lt v3, v0, :cond_4

    const/16 v20, 0x7a

    move/from16 v0, v20

    if-gt v3, v0, :cond_4

    .line 163
    move/from16 v18, v13

    .line 167
    .end local v3    # "c":C
    :cond_3
    const/4 v7, 0x0

    .line 168
    .local v7, "f":F
    const/4 v11, 0x0

    .line 169
    .local v11, "fraction":I
    const/16 v19, 0x0

    .line 170
    .local v19, "unitType":I
    const/4 v15, 0x0

    .line 172
    .local v15, "mantissaShift":I
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    if-ge v5, v12, :cond_12

    move/from16 v0, v18

    if-ge v12, v0, :cond_12

    .line 174
    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 178
    const/16 v20, -0x3

    move/from16 v0, v20

    if-eq v5, v0, :cond_6

    const/16 v20, -0x2

    move/from16 v0, v20

    if-eq v12, v0, :cond_6

    .line 180
    const/4 v9, 0x4

    .line 181
    .local v9, "fracMaxDigits":I
    add-int/lit8 v10, v5, 0x1

    .line 182
    .local v10, "fracStart":I
    const/16 v20, 0x4

    sub-int v21, v12, v5

    :try_start_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    add-int v8, v10, v20

    .line 183
    .local v8, "fracEnd":I
    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .local v16, "tmp":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 185
    const/16 v20, 0x30

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 188
    .end local v8    # "fracEnd":I
    .end local v16    # "tmp":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    .line 189
    .local v6, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    .line 229
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "fracMaxDigits":I
    .end local v10    # "fracStart":I
    :goto_2
    return-object v4

    .line 151
    .end local v7    # "f":F
    .end local v11    # "fraction":I
    .end local v15    # "mantissaShift":I
    .end local v19    # "unitType":I
    .restart local v3    # "c":C
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 175
    .end local v3    # "c":C
    .restart local v7    # "f":F
    .restart local v11    # "fraction":I
    .restart local v15    # "mantissaShift":I
    .restart local v19    # "unitType":I
    :catch_1
    move-exception v6

    .line 176
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_2

    .line 187
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "fracEnd":I
    .restart local v9    # "fracMaxDigits":I
    .restart local v10    # "fracStart":I
    .restart local v16    # "tmp":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    .line 193
    .end local v8    # "fracEnd":I
    .end local v9    # "fracMaxDigits":I
    .end local v10    # "fracStart":I
    .end local v16    # "tmp":Ljava/lang/StringBuilder;
    :cond_6
    const/16 v20, 0x100

    move/from16 v0, v20

    if-ge v11, v0, :cond_8

    .line 194
    const/high16 v20, 0x43800000    # 256.0f

    mul-float v7, v7, v20

    .line 205
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 206
    .local v17, "unit":Ljava/lang/String;
    const-string/jumbo v20, "px"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 207
    const/16 v19, 0x0

    .line 222
    :goto_4
    float-to-int v0, v7

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 223
    .local v4, "complex":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, -0x100

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 224
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    shl-int/lit8 v21, v15, 0x4

    or-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 225
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    or-int v20, v20, v19

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 226
    goto :goto_2

    .line 195
    .end local v4    # "complex":Ljava/lang/Integer;
    .end local v17    # "unit":Ljava/lang/String;
    :cond_8
    const v20, 0x8000

    move/from16 v0, v20

    if-ge v11, v0, :cond_9

    .line 196
    const/high16 v20, 0x47000000    # 32768.0f

    mul-float v7, v7, v20

    .line 197
    const/4 v15, 0x1

    goto :goto_3

    .line 198
    :cond_9
    const/high16 v20, 0x800000

    move/from16 v0, v20

    if-ge v11, v0, :cond_a

    .line 199
    const/high16 v20, 0x4b000000    # 8388608.0f

    mul-float v7, v7, v20

    .line 200
    const/4 v15, 0x2

    goto :goto_3

    .line 201
    :cond_a
    int-to-long v0, v11

    move-wide/from16 v20, v0

    const-wide v22, 0x80000000L

    cmp-long v20, v20, v22

    if-gez v20, :cond_7

    .line 202
    const/high16 v20, 0x4f000000

    mul-float v7, v7, v20

    .line 203
    const/4 v15, 0x3

    goto :goto_3

    .line 208
    .restart local v17    # "unit":Ljava/lang/String;
    :cond_b
    const-string v20, "dp"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    const-string v20, "dip"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 209
    :cond_c
    const/16 v19, 0x1

    goto :goto_4

    .line 210
    :cond_d
    const-string/jumbo v20, "sp"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 211
    const/16 v19, 0x2

    goto/16 :goto_4

    .line 212
    :cond_e
    const-string/jumbo v20, "pt"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 213
    const/16 v19, 0x3

    goto/16 :goto_4

    .line 214
    :cond_f
    const-string v20, "in"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 215
    const/16 v19, 0x4

    goto/16 :goto_4

    .line 216
    :cond_10
    const-string/jumbo v20, "mm"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 217
    const/16 v19, 0x5

    goto/16 :goto_4

    .line 219
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 227
    .end local v17    # "unit":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_2
.end method
