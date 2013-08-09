.class Lcom/mediatek/gemini/SimItem;
.super Ljava/lang/Object;
.source "SimManagement.java"


# instance fields
.field public mColor:I

.field public mDispalyNumberFormat:I

.field public mIsSim:Z

.field public mName:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mSimID:J

.field public mSlot:I

.field public mState:I


# direct methods
.method public constructor <init>(Landroid/provider/Telephony$SIMInfo;)V
    .locals 3
    .parameter "siminfo"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v2, p0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    .line 59
    iput-object v1, p0, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    .line 62
    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mColor:I

    .line 63
    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mSlot:I

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/gemini/SimItem;->mSimID:J

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mState:I

    .line 90
    iput-boolean v2, p0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    .line 91
    iget-object v0, p1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    .line 95
    iget v0, p1, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mColor:I

    .line 96
    iget v0, p1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mSlot:I

    .line 97
    iget-wide v0, p1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v0, p0, Lcom/mediatek/gemini/SimItem;->mSimID:J

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 3
    .parameter "name"
    .parameter "color"
    .parameter "simID"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    .line 59
    iput-object v2, p0, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/mediatek/gemini/SimItem;->mColor:I

    .line 63
    iput v1, p0, Lcom/mediatek/gemini/SimItem;->mSlot:I

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/gemini/SimItem;->mSimID:J

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mState:I

    .line 78
    iput-object p1, p0, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    .line 79
    iput p2, p0, Lcom/mediatek/gemini/SimItem;->mColor:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    .line 81
    iput-wide p3, p0, Lcom/mediatek/gemini/SimItem;->mSimID:J

    .line 82
    return-void
.end method
