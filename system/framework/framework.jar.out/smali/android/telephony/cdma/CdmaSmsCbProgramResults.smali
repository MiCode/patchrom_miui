.class public Landroid/telephony/cdma/CdmaSmsCbProgramResults;
.super Ljava/lang/Object;
.source "CdmaSmsCbProgramResults.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramResults;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_CATEGORY_ALREADY_ADDED:I = 0x3

.field public static final RESULT_CATEGORY_ALREADY_DELETED:I = 0x4

.field public static final RESULT_CATEGORY_LIMIT_EXCEEDED:I = 0x2

.field public static final RESULT_INVALID_ALERT_OPTION:I = 0x6

.field public static final RESULT_INVALID_CATEGORY_NAME:I = 0x7

.field public static final RESULT_INVALID_MAX_MESSAGES:I = 0x5

.field public static final RESULT_MEMORY_LIMIT_EXCEEDED:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_UNSPECIFIED_FAILURE:I = 0x8


# instance fields
.field private final mCategory:I

.field private final mCategoryResult:I

.field private final mLanguage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Landroid/telephony/cdma/CdmaSmsCbProgramResults$1;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaSmsCbProgramResults$1;-><init>()V

    sput-object v0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "language"    # I
    .param p3, "categoryResult"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    .line 68
    iput p2, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    .line 69
    iput p3, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    .line 70
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    return v0
.end method

.method public getCategoryResult()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaSmsCbProgramResults{category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 87
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void
.end method
