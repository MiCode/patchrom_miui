.class public final Landroid/print/PrintJobInfo;
.super Ljava/lang/Object;
.source "PrintJobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintJobInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_ANY:I = -0x1

.field public static final STATE_ANY_ACTIVE:I = -0x3

.field public static final STATE_ANY_SCHEDULED:I = -0x4

.field public static final STATE_ANY_VISIBLE_TO_CLIENTS:I = -0x2

.field public static final STATE_BLOCKED:I = 0x4

.field public static final STATE_CANCELED:I = 0x7

.field public static final STATE_COMPLETED:I = 0x5

.field public static final STATE_CREATED:I = 0x1

.field public static final STATE_FAILED:I = 0x6

.field public static final STATE_QUEUED:I = 0x2

.field public static final STATE_STARTED:I = 0x3


# instance fields
.field private mAdvancedOptions:Landroid/os/Bundle;

.field private mAppId:I

.field private mAttributes:Landroid/print/PrintAttributes;

.field private mCanceling:Z

.field private mCopies:I

.field private mCreationTime:J

.field private mDocumentInfo:Landroid/print/PrintDocumentInfo;

.field private mId:Landroid/print/PrintJobId;

.field private mLabel:Ljava/lang/String;

.field private mPageRanges:[Landroid/print/PageRange;

.field private mPrinterId:Landroid/print/PrinterId;

.field private mPrinterName:Ljava/lang/String;

.field private mState:I

.field private mStateReason:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 749
    new-instance v0, Landroid/print/PrintJobInfo$1;

    invoke-direct {v0}, Landroid/print/PrintJobInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobId;

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    .line 197
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/print/PrintJobInfo;->mState:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/print/PrintJobInfo;->mAppId:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/print/PrintJobInfo;->mCopies:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mStateReason:Ljava/lang/String;

    .line 205
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 206
    .local v1, "parcelables":[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    .line 207
    array-length v2, v1

    new-array v2, v2, [Landroid/print/PageRange;

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 209
    iget-object v4, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    aget-object v2, v1, v0

    check-cast v2, Landroid/print/PageRange;

    aput-object v2, v4, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/print/PrintAttributes;

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    .line 213
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/print/PrintDocumentInfo;

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    .line 216
    return-void

    .line 214
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrintJobInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/print/PrintJobInfo$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/print/PrintJobInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/print/PrintJobInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    .line 178
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    .line 179
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    .line 180
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    .line 181
    iget v0, p1, Landroid/print/PrintJobInfo;->mState:I

    iput v0, p0, Landroid/print/PrintJobInfo;->mState:I

    .line 182
    iget v0, p1, Landroid/print/PrintJobInfo;->mAppId:I

    iput v0, p0, Landroid/print/PrintJobInfo;->mAppId:I

    .line 183
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    .line 184
    iget-wide v0, p1, Landroid/print/PrintJobInfo;->mCreationTime:J

    iput-wide v0, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    .line 185
    iget v0, p1, Landroid/print/PrintJobInfo;->mCopies:I

    iput v0, p0, Landroid/print/PrintJobInfo;->mCopies:I

    .line 186
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mStateReason:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mStateReason:Ljava/lang/String;

    .line 187
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    .line 188
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    .line 189
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    .line 190
    iget-boolean v0, p1, Landroid/print/PrintJobInfo;->mCanceling:Z

    iput-boolean v0, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    .line 191
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    .line 192
    return-void
.end method

.method static synthetic access$002(Landroid/print/PrintJobInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/print/PrintJobInfo;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Landroid/print/PrintJobInfo;->mCopies:I

    return p1
.end method

.method static synthetic access$102(Landroid/print/PrintJobInfo;Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes;
    .locals 0
    .param p0, "x0"    # Landroid/print/PrintJobInfo;
    .param p1, "x1"    # Landroid/print/PrintAttributes;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    return-object p1
.end method

.method static synthetic access$202(Landroid/print/PrintJobInfo;[Landroid/print/PageRange;)[Landroid/print/PageRange;
    .locals 0
    .param p0, "x0"    # Landroid/print/PrintJobInfo;
    .param p1, "x1"    # [Landroid/print/PageRange;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    return-object p1
.end method

.method static synthetic access$300(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$302(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Landroid/print/PrintJobInfo;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    return-object p1
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 640
    packed-switch p0, :pswitch_data_0

    .line 663
    const-string v0, "STATE_UNKNOWN"

    :goto_0
    return-object v0

    .line 642
    :pswitch_0
    const-string v0, "STATE_CREATED"

    goto :goto_0

    .line 645
    :pswitch_1
    const-string v0, "STATE_QUEUED"

    goto :goto_0

    .line 648
    :pswitch_2
    const-string v0, "STATE_STARTED"

    goto :goto_0

    .line 651
    :pswitch_3
    const-string v0, "STATE_BLOCKED"

    goto :goto_0

    .line 654
    :pswitch_4
    const-string v0, "STATE_FAILED"

    goto :goto_0

    .line 657
    :pswitch_5
    const-string v0, "STATE_COMPLETED"

    goto :goto_0

    .line 660
    :pswitch_6
    const-string v0, "STATE_CANCELED"

    goto :goto_0

    .line 640
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    return v0
.end method

.method public getAdvancedIntOption(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 563
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 566
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdvancedOptions()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public getAdvancedStringOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 548
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppId()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Landroid/print/PrintJobInfo;->mAppId:I

    return v0
.end method

.method public getAttributes()Landroid/print/PrintAttributes;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    return-object v0
.end method

.method public getCopies()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Landroid/print/PrintJobInfo;->mCopies:I

    return v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 378
    iget-wide v0, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    return-wide v0
.end method

.method public getDocumentInfo()Landroid/print/PrintDocumentInfo;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    return-object v0
.end method

.method public getId()Landroid/print/PrintJobId;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPages()[Landroid/print/PageRange;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    return-object v0
.end method

.method public getPrinterId()Landroid/print/PrinterId;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    return-object v0
.end method

.method public getPrinterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Landroid/print/PrintJobInfo;->mState:I

    return v0
.end method

.method public getStateReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mStateReason:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public hasAdvancedOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 536
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelling()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    return v0
.end method

.method public setAdvancedOptions(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 588
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    .line 589
    return-void
.end method

.method public setAppId(I)V
    .locals 0
    .param p1, "appId"    # I

    .prologue
    .line 347
    iput p1, p0, Landroid/print/PrintJobInfo;->mAppId:I

    .line 348
    return-void
.end method

.method public setAttributes(Landroid/print/PrintAttributes;)V
    .locals 0
    .param p1, "attributes"    # Landroid/print/PrintAttributes;

    .prologue
    .line 479
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    .line 480
    return-void
.end method

.method public setCancelling(Z)V
    .locals 0
    .param p1, "cancelling"    # Z

    .prologue
    .line 523
    iput-boolean p1, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    .line 524
    return-void
.end method

.method public setCopies(I)V
    .locals 2
    .param p1, "copyCount"    # I

    .prologue
    .line 412
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Copies must be more than one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    iput p1, p0, Landroid/print/PrintJobInfo;->mCopies:I

    .line 416
    return-void
.end method

.method public setCreationTime(J)V
    .locals 2
    .param p1, "creationTime"    # J

    .prologue
    .line 389
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "creationTime must be non-negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    iput-wide p1, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    .line 393
    return-void
.end method

.method public setDocumentInfo(Landroid/print/PrintDocumentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/print/PrintDocumentInfo;

    .prologue
    .line 501
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    .line 502
    return-void
.end method

.method public setId(Landroid/print/PrintJobId;)V
    .locals 0
    .param p1, "id"    # Landroid/print/PrintJobId;

    .prologue
    .line 235
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    .line 236
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setPages([Landroid/print/PageRange;)V
    .locals 0
    .param p1, "pageRanges"    # [Landroid/print/PageRange;

    .prologue
    .line 459
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    .line 460
    return-void
.end method

.method public setPrinterId(Landroid/print/PrinterId;)V
    .locals 0
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 275
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    .line 276
    return-void
.end method

.method public setPrinterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "printerName"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 325
    iput p1, p0, Landroid/print/PrintJobInfo;->mState:I

    .line 326
    return-void
.end method

.method public setStateReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateReason"    # Ljava/lang/String;

    .prologue
    .line 439
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mStateReason:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrintJobInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    const-string v1, "label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 621
    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/print/PrintJobInfo;->mState:I

    invoke-static {v3}, Landroid/print/PrintJobInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", printer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string v1, ", tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", creationTime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const-string v1, ", copies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/print/PrintJobInfo;->mCopies:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", attributes: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v1}, Landroid/print/PrintAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", documentInfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", cancelling: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", pages: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hasAdvancedOptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    move-object v1, v2

    .line 626
    goto/16 :goto_0

    :cond_2
    move-object v1, v2

    .line 628
    goto :goto_1

    .line 633
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 598
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 599
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 601
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    iget v1, p0, Landroid/print/PrintJobInfo;->mState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    iget v1, p0, Landroid/print/PrintJobInfo;->mAppId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 605
    iget-wide v1, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 606
    iget v1, p0, Landroid/print/PrintJobInfo;->mCopies:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mStateReason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 609
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 610
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 611
    iget-boolean v1, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 613
    return-void
.end method
