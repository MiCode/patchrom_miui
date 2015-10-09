.class public Landroid/content/pm/PackageCleanItem;
.super Ljava/lang/Object;
.source "PackageCleanItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageCleanItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final andCode:Z

.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/content/pm/PackageCleanItem$1;

    invoke-direct {v0}, Landroid/content/pm/PackageCleanItem$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "andCode"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    .line 30
    iput-object p2, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    .line 31
    iput-boolean p3, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    .line 84
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PackageCleanItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/PackageCleanItem$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/content/pm/PackageCleanItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    if-ne p0, p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v2

    .line 40
    :cond_1
    if-eqz p1, :cond_3

    .line 41
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/pm/PackageCleanItem;

    move-object v1, v0

    .line 42
    .local v1, "other":Landroid/content/pm/PackageCleanItem;
    iget v4, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    iget v5, v1, Landroid/content/pm/PackageCleanItem;->userId:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    iget-boolean v5, v1, Landroid/content/pm/PackageCleanItem;->andCode:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .line 45
    .end local v1    # "other":Landroid/content/pm/PackageCleanItem;
    :catch_0
    move-exception v2

    :cond_3
    move v2, v3

    .line 47
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0x11

    .line 53
    .local v0, "result":I
    iget v1, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    add-int/lit16 v0, v1, 0x20f

    .line 54
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 55
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 56
    return v0

    .line 55
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 64
    iget v0, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object v0, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
