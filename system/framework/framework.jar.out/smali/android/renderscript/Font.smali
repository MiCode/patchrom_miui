.class public Landroid/renderscript/Font;
.super Landroid/renderscript/BaseObj;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Font$1;,
        Landroid/renderscript/Font$Style;,
        Landroid/renderscript/Font$FontFamily;
    }
.end annotation


# static fields
.field private static sFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/renderscript/Font$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMonoNames:[Ljava/lang/String;

.field private static final sSansNames:[Ljava/lang/String;

.field private static final sSerifNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "sans-serif"

    aput-object v1, v0, v3

    const-string v1, "arial"

    aput-object v1, v0, v4

    const-string v1, "helvetica"

    aput-object v1, v0, v5

    const-string/jumbo v1, "tahoma"

    aput-object v1, v0, v6

    const-string/jumbo v1, "verdana"

    aput-object v1, v0, v7

    sput-object v0, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    .line 57
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "serif"

    aput-object v1, v0, v3

    const-string/jumbo v1, "times"

    aput-object v1, v0, v4

    const-string/jumbo v1, "times new roman"

    aput-object v1, v0, v5

    const-string/jumbo v1, "palatino"

    aput-object v1, v0, v6

    const-string v1, "georgia"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "baskerville"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "goudy"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "fantasy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cursive"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ITC Stone Serif"

    aput-object v2, v0, v1

    sput-object v0, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    .line 62
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "monospace"

    aput-object v1, v0, v3

    const-string v1, "courier"

    aput-object v1, v0, v4

    const-string v1, "courier new"

    aput-object v1, v0, v5

    const-string/jumbo v1, "monaco"

    aput-object v1, v0, v6

    sput-object v0, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    .line 133
    invoke-static {}, Landroid/renderscript/Font;->initFontFamilyMap()V

    .line 134
    return-void
.end method

.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 156
    return-void
.end method

.method private static addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V
    .locals 3
    .param p0, "family"    # Landroid/renderscript/Font$FontFamily;

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 100
    sget-object v1, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;Landroid/renderscript/Font$Style;F)Landroid/renderscript/Font;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "familyName"    # Ljava/lang/String;
    .param p3, "fontStyle"    # Landroid/renderscript/Font$Style;
    .param p4, "pointSize"    # F

    .prologue
    .line 242
    invoke-static {p2, p3}, Landroid/renderscript/Font;->getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "fontPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {p0, p1, v1, p4}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object v2

    return-object v2
.end method

.method public static createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .locals 7
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pointSize"    # F

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 187
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 188
    .local v2, "mgr":Landroid/content/res/AssetManager;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 190
    .local v0, "dpi":I
    invoke-virtual {p0, v2, p2, p3, v0}, Landroid/renderscript/RenderScript;->nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)I

    move-result v1

    .line 191
    .local v1, "fontId":I
    if-nez v1, :cond_0

    .line 192
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create font from asset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 194
    :cond_0
    new-instance v3, Landroid/renderscript/Font;

    invoke-direct {v3, v1, p0}, Landroid/renderscript/Font;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 195
    .local v3, "rsFont":Landroid/renderscript/Font;
    return-object v3
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/io/File;F)Landroid/renderscript/Font;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "pointSize"    # F

    .prologue
    .line 179
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pointSize"    # F

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 164
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 165
    .local v0, "dpi":I
    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScript;->nFontCreateFromFile(Ljava/lang/String;FI)I

    move-result v1

    .line 167
    .local v1, "fontId":I
    if-nez v1, :cond_0

    .line 168
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create font from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    :cond_0
    new-instance v2, Landroid/renderscript/Font;

    invoke-direct {v2, v1, p0}, Landroid/renderscript/Font;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 172
    .local v2, "rsFont":Landroid/renderscript/Font;
    return-object v2
.end method

.method public static createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;IF)Landroid/renderscript/Font;
    .locals 10
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "pointSize"    # F

    .prologue
    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "R."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 205
    const/4 v4, 0x0

    .line 207
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 212
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 214
    .local v1, "dpi":I
    const/4 v3, 0x0

    .line 215
    .local v3, "fontId":I
    instance-of v7, v4, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v7, :cond_0

    .line 216
    check-cast v4, Landroid/content/res/AssetManager$AssetInputStream;

    .end local v4    # "is":Ljava/io/InputStream;
    invoke-virtual {v4}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v0

    .line 217
    .local v0, "asset":I
    invoke-virtual {p0, v5, p3, v1, v0}, Landroid/renderscript/RenderScript;->nFontCreateFromAssetStream(Ljava/lang/String;FII)I

    move-result v3

    .line 222
    if-nez v3, :cond_1

    .line 223
    new-instance v7, Landroid/renderscript/RSRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to create font from resource "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 208
    .end local v0    # "asset":I
    .end local v1    # "dpi":I
    .end local v3    # "fontId":I
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Landroid/renderscript/RSRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open resource "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 219
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dpi":I
    .restart local v3    # "fontId":I
    :cond_0
    new-instance v7, Landroid/renderscript/RSRuntimeException;

    const-string v8, "Unsupported asset stream created"

    invoke-direct {v7, v8}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 225
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v0    # "asset":I
    :cond_1
    new-instance v6, Landroid/renderscript/Font;

    invoke-direct {v6, v3, p0}, Landroid/renderscript/Font;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 226
    .local v6, "rsFont":Landroid/renderscript/Font;
    return-object v6
.end method

.method static getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;
    .locals 3
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # Landroid/renderscript/Font$Style;

    .prologue
    .line 137
    sget-object v1, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Font$FontFamily;

    .line 138
    .local v0, "family":Landroid/renderscript/Font$FontFamily;
    if-eqz v0, :cond_0

    .line 139
    sget-object v1, Landroid/renderscript/Font$1;->$SwitchMap$android$renderscript$Font$Style:[I

    invoke-virtual {p1}, Landroid/renderscript/Font$Style;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 151
    :cond_0
    const-string v1, "DroidSans.ttf"

    :goto_0
    return-object v1

    .line 141
    :pswitch_0
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    goto :goto_0

    .line 147
    :pswitch_3
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static initFontFamilyMap()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 105
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    .line 107
    new-instance v1, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v1, v4}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    .line 108
    .local v1, "sansFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v3, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 109
    const-string v3, "Roboto-Regular.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 110
    const-string v3, "Roboto-Bold.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 111
    const-string v3, "Roboto-Italic.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 112
    const-string v3, "Roboto-BoldItalic.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 113
    invoke-static {v1}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 115
    new-instance v2, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v2, v4}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    .line 116
    .local v2, "serifFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v3, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 117
    const-string v3, "DroidSerif-Regular.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 118
    const-string v3, "DroidSerif-Bold.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 119
    const-string v3, "DroidSerif-Italic.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 120
    const-string v3, "DroidSerif-BoldItalic.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 121
    invoke-static {v2}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 123
    new-instance v0, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v0, v4}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    .line 124
    .local v0, "monoFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v3, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 125
    const-string v3, "DroidSansMono.ttf"

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 126
    const-string v3, "DroidSansMono.ttf"

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 127
    const-string v3, "DroidSansMono.ttf"

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 128
    const-string v3, "DroidSansMono.ttf"

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 129
    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 130
    return-void
.end method
