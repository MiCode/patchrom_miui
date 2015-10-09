.class public final Landroid/mtp/MtpObjectInfo;
.super Ljava/lang/Object;
.source "MtpObjectInfo.java"


# instance fields
.field private mAssociationDesc:I

.field private mAssociationType:I

.field private mCompressedSize:I

.field private mDateCreated:J

.field private mDateModified:J

.field private mFormat:I

.field private mHandle:I

.field private mImagePixDepth:I

.field private mImagePixHeight:I

.field private mImagePixWidth:I

.field private mKeywords:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mParent:I

.field private mProtectionStatus:I

.field private mSequenceNumber:I

.field private mStorageId:I

.field private mThumbCompressedSize:I

.field private mThumbFormat:I

.field private mThumbPixHeight:I

.field private mThumbPixWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public final getAssociationDesc()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I

    return v0
.end method

.method public final getAssociationType()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationType:I

    return v0
.end method

.method public final getCompressedSize()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    return v0
.end method

.method public final getDateCreated()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateCreated:J

    return-wide v0
.end method

.method public final getDateModified()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateModified:J

    return-wide v0
.end method

.method public final getFormat()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mFormat:I

    return v0
.end method

.method public final getImagePixDepth()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    return v0
.end method

.method public final getImagePixHeight()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    return v0
.end method

.method public final getImagePixWidth()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    return v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getObjectHandle()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mHandle:I

    return v0
.end method

.method public final getParent()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mParent:I

    return v0
.end method

.method public final getProtectionStatus()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I

    return v0
.end method

.method public final getSequenceNumber()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    return v0
.end method

.method public final getStorageId()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mStorageId:I

    return v0
.end method

.method public final getThumbCompressedSize()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    return v0
.end method

.method public final getThumbFormat()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbFormat:I

    return v0
.end method

.method public final getThumbPixHeight()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    return v0
.end method

.method public final getThumbPixWidth()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    return v0
.end method
