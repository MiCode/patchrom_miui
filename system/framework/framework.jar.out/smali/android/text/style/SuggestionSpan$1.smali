.class final Landroid/text/style/SuggestionSpan$1;
.super Ljava/lang/Object;
.source "SuggestionSpan.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/SuggestionSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/text/style/SuggestionSpan;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/text/style/SuggestionSpan;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 293
    new-instance v0, Landroid/text/style/SuggestionSpan;

    invoke-direct {v0, p1}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Landroid/text/style/SuggestionSpan$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/style/SuggestionSpan;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/text/style/SuggestionSpan;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 298
    new-array v0, p1, [Landroid/text/style/SuggestionSpan;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Landroid/text/style/SuggestionSpan$1;->newArray(I)[Landroid/text/style/SuggestionSpan;

    move-result-object v0

    return-object v0
.end method
