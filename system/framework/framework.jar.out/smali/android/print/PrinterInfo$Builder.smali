.class public final Landroid/print/PrinterInfo$Builder;
.super Ljava/lang/Object;
.source "PrinterInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrinterInfo;


# direct methods
.method public constructor <init>(Landroid/print/PrinterId;Ljava/lang/String;I)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "status"    # I

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    if-nez p1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "printerId cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    invoke-direct {p0, p3}, Landroid/print/PrinterInfo$Builder;->isValidStatus(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "status is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_2
    new-instance v0, Landroid/print/PrinterInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterInfo$1;)V

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    .line 242
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    # setter for: Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;
    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->access$102(Landroid/print/PrinterInfo;Landroid/print/PrinterId;)Landroid/print/PrinterId;

    .line 243
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    # setter for: Landroid/print/PrinterInfo;->mName:Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/print/PrinterInfo;->access$202(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    # setter for: Landroid/print/PrinterInfo;->mStatus:I
    invoke-static {v0, p3}, Landroid/print/PrinterInfo;->access$302(Landroid/print/PrinterInfo;I)I

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/print/PrinterInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/print/PrinterInfo;

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Landroid/print/PrinterInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterInfo$1;)V

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    .line 254
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    invoke-virtual {v0, p1}, Landroid/print/PrinterInfo;->copyFrom(Landroid/print/PrinterInfo;)V

    .line 255
    return-void
.end method

.method private isValidStatus(I)Z
    .locals 2
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x1

    .line 317
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/print/PrinterInfo;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    return-object v0
.end method

.method public setCapabilities(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrinterInfo$Builder;
    .locals 1
    .param p1, "capabilities"    # Landroid/print/PrinterCapabilitiesInfo;

    .prologue
    .line 303
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    # setter for: Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;
    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->access$502(Landroid/print/PrinterInfo;Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrinterCapabilitiesInfo;

    .line 304
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/print/PrinterInfo$Builder;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    # setter for: Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->access$402(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/print/PrinterInfo$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    # setter for: Landroid/print/PrinterInfo;->mName:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->access$202(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public setStatus(I)Landroid/print/PrinterInfo$Builder;
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 268
    iget-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrototype:Landroid/print/PrinterInfo;

    # setter for: Landroid/print/PrinterInfo;->mStatus:I
    invoke-static {v0, p1}, Landroid/print/PrinterInfo;->access$302(Landroid/print/PrinterInfo;I)I

    .line 269
    return-object p0
.end method
