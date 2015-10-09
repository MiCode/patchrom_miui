.class public final Landroid/view/accessibility/CaptioningManager$CaptionStyle;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptionStyle"
.end annotation


# static fields
.field private static final BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final EDGE_TYPE_NONE:I = 0x0

.field public static final EDGE_TYPE_OUTLINE:I = 0x1

.field public static final PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final PRESET_CUSTOM:I = -0x1

.field private static final WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field private mParsedTypeface:Landroid/graphics/Typeface;

.field public final mRawTypeface:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v1, -0x1

    const/16 v12, -0x100

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/high16 v2, -0x1000000

    .line 348
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move v4, v2

    invoke-direct/range {v0 .. v5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 350
    new-instance v6, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move v7, v2

    move v8, v1

    move v9, v3

    move v10, v2

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIILjava/lang/String;)V

    sput-object v6, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 352
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move v1, v12

    move v4, v2

    invoke-direct/range {v0 .. v5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 354
    new-instance v6, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const v8, -0xffff01

    move v7, v12

    move v9, v3

    move v10, v2

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIILjava/lang/String;)V

    sput-object v6, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 357
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 361
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 362
    return-void
.end method

.method private constructor <init>(IIIILjava/lang/String;)V
    .locals 0
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "edgeType"    # I
    .param p4, "edgeColor"    # I
    .param p5, "rawTypeface"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput p1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 306
    iput p2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 307
    iput p3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 308
    iput p4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 310
    iput-object p5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public static getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 328
    sget-object v6, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 329
    .local v6, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    const-string v0, "accessibility_captioning_foreground_color"

    iget v7, v6, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-static {p0, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 331
    .local v1, "foregroundColor":I
    const-string v0, "accessibility_captioning_background_color"

    iget v7, v6, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-static {p0, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 333
    .local v2, "backgroundColor":I
    const-string v0, "accessibility_captioning_edge_type"

    iget v7, v6, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-static {p0, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 335
    .local v3, "edgeType":I
    const-string v0, "accessibility_captioning_edge_color"

    iget v7, v6, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-static {p0, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 338
    .local v4, "edgeColor":I
    const-string v0, "accessibility_captioning_typeface"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "rawTypeface":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 340
    iget-object v5, v6, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 343
    :cond_0
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-direct/range {v0 .. v5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    .line 321
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method
