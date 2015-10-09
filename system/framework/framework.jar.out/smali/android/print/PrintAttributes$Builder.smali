.class public final Landroid/print/PrintAttributes$Builder;
.super Ljava/lang/Object;
.source "PrintAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAttributes:Landroid/print/PrintAttributes;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1187
    new-instance v0, Landroid/print/PrintAttributes;

    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    iput-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    return-void
.end method


# virtual methods
.method public build()Landroid/print/PrintAttributes;
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    return-object v0
.end method

.method public setColorMode(I)Landroid/print/PrintAttributes$Builder;
    .locals 2
    .param p1, "colorMode"    # I

    .prologue
    .line 1233
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can specify at most one colorMode bit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1236
    :cond_0
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setColorMode(I)V

    .line 1237
    return-object p0
.end method

.method public setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;
    .locals 1
    .param p1, "mediaSize"    # Landroid/print/PrintAttributes$MediaSize;

    .prologue
    .line 1196
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V

    .line 1197
    return-object p0
.end method

.method public setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;
    .locals 1
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;

    .prologue
    .line 1219
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    .line 1220
    return-object p0
.end method

.method public setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;
    .locals 1
    .param p1, "resolution"    # Landroid/print/PrintAttributes$Resolution;

    .prologue
    .line 1207
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    .line 1208
    return-object p0
.end method
