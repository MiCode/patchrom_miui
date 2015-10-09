.class public final Landroid/view/textservice/TextInfo;
.super Ljava/lang/Object;
.source "TextInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/textservice/TextInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCookie:I

.field private final mSequence:I

.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Landroid/view/textservice/TextInfo$1;

    invoke-direct {v0}, Landroid/view/textservice/TextInfo$1;-><init>()V

    sput-object v0, Landroid/view/textservice/TextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/TextInfo;->mText:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textservice/TextInfo;->mSequence:I

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0, v0}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cookie"    # I
    .param p3, "sequence"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Landroid/view/textservice/TextInfo;->mText:Ljava/lang/String;

    .line 50
    iput p2, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    .line 51
    iput p3, p0, Landroid/view/textservice/TextInfo;->mSequence:I

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getCookie()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Landroid/view/textservice/TextInfo;->mSequence:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/view/textservice/TextInfo;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    iget-object v0, p0, Landroid/view/textservice/TextInfo;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Landroid/view/textservice/TextInfo;->mSequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return-void
.end method
