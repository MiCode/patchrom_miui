.class Landroid/widget/Spinner$SavedState;
.super Landroid/widget/AbsSpinner$SavedState;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/Spinner$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field showDropdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 804
    new-instance v0, Landroid/widget/Spinner$SavedState$1;

    invoke-direct {v0}, Landroid/widget/Spinner$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/Spinner$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 794
    invoke-direct {p0, p1}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 795
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    .line 796
    return-void

    .line 795
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/Spinner$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/Spinner$1;

    .prologue
    .line 786
    invoke-direct {p0, p1}, Landroid/widget/Spinner$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 790
    invoke-direct {p0, p1}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 791
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 800
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner$SavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 801
    iget-boolean v0, p0, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 802
    return-void

    .line 801
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
