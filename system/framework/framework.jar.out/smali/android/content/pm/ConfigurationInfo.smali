.class public Landroid/content/pm/ConfigurationInfo;
.super Ljava/lang/Object;
.source "ConfigurationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final GL_ES_VERSION_UNDEFINED:I = 0x0

.field public static final INPUT_FEATURE_FIVE_WAY_NAV:I = 0x2

.field public static final INPUT_FEATURE_HARD_KEYBOARD:I = 0x1


# instance fields
.field public reqGlEsVersion:I

.field public reqInputFeatures:I

.field public reqKeyboardType:I

.field public reqNavigation:I

.field public reqTouchScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Landroid/content/pm/ConfigurationInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ConfigurationInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/ConfigurationInfo;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 87
    iget v0, p1, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 88
    iget v0, p1, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 89
    iget v0, p1, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 90
    iget v0, p1, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 91
    iget v0, p1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 92
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ConfigurationInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/ConfigurationInfo$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/content/pm/ConfigurationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getGlEsVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 141
    iget v2, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    shr-int/lit8 v0, v2, 0x10

    .line 142
    .local v0, "major":I
    iget v2, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const v3, 0xffff

    and-int v1, v2, v3

    .line 143
    .local v1, "minor":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " touchscreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inputMethod = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " navigation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reqInputFeatures = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reqGlEsVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 109
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return-void
.end method
