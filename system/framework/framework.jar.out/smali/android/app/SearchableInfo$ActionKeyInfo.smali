.class public Landroid/app/SearchableInfo$ActionKeyInfo;
.super Ljava/lang/Object;
.source "SearchableInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionKeyInfo"
.end annotation


# instance fields
.field private final mKeyCode:I

.field private final mQueryActionMsg:Ljava/lang/String;

.field private final mSuggestActionMsg:Ljava/lang/String;

.field private final mSuggestActionMsgColumn:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    sget-object v1, Lcom/android/internal/R$styleable;->SearchableActionKey:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 405
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    .line 407
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    .line 409
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    .line 411
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    .line 413
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 416
    iget v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    if-nez v1, :cond_0

    .line 417
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No keycode."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_0
    iget-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 421
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No message information."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_1
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    .line 437
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/SearchableInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/SearchableInfo$1;

    .prologue
    .line 386
    invoke-direct {p0, p1}, Landroid/app/SearchableInfo$ActionKeyInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    return v0
.end method

.method public getQueryActionMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestActionMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestActionMsgColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 476
    iget v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    return-void
.end method
