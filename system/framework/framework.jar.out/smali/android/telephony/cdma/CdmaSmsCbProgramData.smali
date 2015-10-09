.class public Landroid/telephony/cdma/CdmaSmsCbProgramData;
.super Ljava/lang/Object;
.source "CdmaSmsCbProgramData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALERT_OPTION_DEFAULT_ALERT:I = 0x1

.field public static final ALERT_OPTION_HIGH_PRIORITY_ONCE:I = 0xa

.field public static final ALERT_OPTION_HIGH_PRIORITY_REPEAT:I = 0xb

.field public static final ALERT_OPTION_LOW_PRIORITY_ONCE:I = 0x6

.field public static final ALERT_OPTION_LOW_PRIORITY_REPEAT:I = 0x7

.field public static final ALERT_OPTION_MED_PRIORITY_ONCE:I = 0x8

.field public static final ALERT_OPTION_MED_PRIORITY_REPEAT:I = 0x9

.field public static final ALERT_OPTION_NO_ALERT:I = 0x0

.field public static final ALERT_OPTION_VIBRATE_ONCE:I = 0x2

.field public static final ALERT_OPTION_VIBRATE_REPEAT:I = 0x3

.field public static final ALERT_OPTION_VISUAL_ONCE:I = 0x4

.field public static final ALERT_OPTION_VISUAL_REPEAT:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPERATION_ADD_CATEGORY:I = 0x1

.field public static final OPERATION_CLEAR_CATEGORIES:I = 0x2

.field public static final OPERATION_DELETE_CATEGORY:I


# instance fields
.field private final mAlertOption:I

.field private final mCategory:I

.field private final mCategoryName:Ljava/lang/String;

.field private final mLanguage:I

.field private final mMaxMessages:I

.field private final mOperation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Landroid/telephony/cdma/CdmaSmsCbProgramData$1;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaSmsCbProgramData$1;-><init>()V

    sput-object v0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0
    .param p1, "operation"    # I
    .param p2, "category"    # I
    .param p3, "language"    # I
    .param p4, "maxMessages"    # I
    .param p5, "alertOption"    # I
    .param p6, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    .line 100
    iput p2, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    .line 101
    iput p3, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    .line 102
    iput p4, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    .line 103
    iput p5, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    .line 104
    iput-object p6, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public getAlertOption()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    return v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    return v0
.end method

.method public getMaxMessages()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    return v0
.end method

.method public getOperation()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaSmsCbProgramData{operation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max messages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alert option="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 125
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return-void
.end method
