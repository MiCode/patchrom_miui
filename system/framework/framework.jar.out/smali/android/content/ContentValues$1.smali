.class final Landroid/content/ContentValues$1;
.super Ljava/lang/Object;
.source "ContentValues.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentValues;
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
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 465
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 466
    .local v0, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v0, v2}, Landroid/content/ContentValues;-><init>(Ljava/util/HashMap;Landroid/content/ContentValues$1;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Landroid/content/ContentValues$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/ContentValues;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 470
    new-array v0, p1, [Landroid/content/ContentValues;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Landroid/content/ContentValues$1;->newArray(I)[Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method
