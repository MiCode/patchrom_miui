.class public final Landroid/print/PrintAttributes$Resolution;
.super Ljava/lang/Object;
.source "PrintAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resolution"
.end annotation


# instance fields
.field private final mHorizontalDpi:I

.field private final mId:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private final mVerticalDpi:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "horizontalDpi"    # I
    .param p4, "verticalDpi"    # I

    .prologue
    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 918
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 919
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "label cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
    :cond_1
    if-gtz p3, :cond_2

    .line 922
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "horizontalDpi cannot be less than or equal to zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 925
    :cond_2
    if-gtz p4, :cond_3

    .line 926
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "verticalDpi cannot be less than or equal to zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_3
    iput-object p1, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    .line 930
    iput-object p2, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    .line 931
    iput p3, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    .line 932
    iput p4, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    .line 933
    return-void
.end method

.method static createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;
    .locals 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 984
    new-instance v0, Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1002
    if-ne p0, p1, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return v1

    .line 1005
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 1006
    goto :goto_0

    .line 1008
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 1009
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1011
    check-cast v0, Landroid/print/PrintAttributes$Resolution;

    .line 1012
    .local v0, "other":Landroid/print/PrintAttributes$Resolution;
    iget v3, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    iget v4, v0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1013
    goto :goto_0

    .line 1015
    :cond_4
    iget v3, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    iget v4, v0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 1016
    goto :goto_0
.end method

.method public getHorizontalDpi()I
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalDpi()I
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 993
    const/16 v0, 0x1f

    .line 994
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 995
    .local v1, "result":I
    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    add-int/lit8 v1, v2, 0x1f

    .line 996
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    add-int v1, v2, v3

    .line 997
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1024
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Resolution{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    const-string v1, ", label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    const-string v1, ", horizontalDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1028
    const-string v1, ", verticalDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1029
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 977
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Landroid/print/PrintAttributes$Resolution;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 979
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mHorizontalDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    iget v0, p0, Landroid/print/PrintAttributes$Resolution;->mVerticalDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    return-void
.end method
