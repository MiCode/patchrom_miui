.class public final Landroid/content/res/Resources$Theme;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Theme"
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mTheme:I

.field final synthetic this$0:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 1478
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1479
    iget-object v0, p1, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    .line 1480
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->createTheme()I

    move-result v0

    iput v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    .line 1481
    return-void
.end method


# virtual methods
.method public applyStyle(IZ)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "force"    # Z

    .prologue
    .line 1223
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, p1, p2}, Landroid/content/res/AssetManager;->applyThemeStyle(IIZ)V

    .line 1224
    return-void
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1470
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->dumpTheme(IILjava/lang/String;Ljava/lang/String;)V

    .line 1471
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1474
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1475
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->releaseTheme(I)V

    .line 1476
    return-void
.end method

.method public obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 9
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1291
    array-length v8, p2

    .line 1292
    .local v8, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    # invokes: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v0, v8}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1293
    .local v7, "array":Landroid/content/res/TypedArray;
    iput-object p2, v7, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1295
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget-object v5, v7, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v7, Landroid/content/res/TypedArray;->mIndices:[I

    move v2, p1

    move v3, v1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1325
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 10
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1378
    array-length v8, p2

    .line 1379
    .local v8, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    # invokes: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v0, v8}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v7

    .local v7, "array":Landroid/content/res/TypedArray;
    move-object v9, p1

    .line 1385
    check-cast v9, Landroid/content/res/XmlBlock$Parser;

    .line 1386
    .local v9, "parser":Landroid/content/res/XmlBlock$Parser;
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    if-eqz v9, :cond_0

    iget v3, v9, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    :goto_0
    iget-object v5, v7, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v7, Landroid/content/res/TypedArray;->mIndices:[I

    move v1, p3

    move v2, p4

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1391
    iput-object p2, v7, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1392
    iput-object v9, v7, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1425
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    .line 1386
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 9
    .param p1, "attrs"    # [I

    .prologue
    const/4 v1, 0x0

    .line 1259
    array-length v8, p1

    .line 1260
    .local v8, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    # invokes: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v0, v8}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1261
    .local v7, "array":Landroid/content/res/TypedArray;
    iput-object p1, v7, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1262
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget-object v5, v7, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v7, Landroid/content/res/TypedArray;->mIndices:[I

    move v2, v1

    move v3, v1

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1266
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 3
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .prologue
    .line 1447
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget v2, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/content/res/AssetManager;->getThemeValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1455
    .local v0, "got":Z
    if-eqz v0, :cond_0

    .line 1456
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v1, p2, p1}, Landroid/content/res/Resources;->loadOverlayValue(Landroid/util/TypedValue;I)V

    .line 1459
    :cond_0
    return v0
.end method

.method public setTo(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "other"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1236
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget v1, p1, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->copyTheme(II)V

    .line 1237
    return-void
.end method
