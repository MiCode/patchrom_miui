.class public final Landroid/hardware/display/WifiDisplayStatus;
.super Ljava/lang/Object;
.source "WifiDisplayStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/display/WifiDisplayStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY_STATE_CONNECTED:I = 0x2

.field public static final DISPLAY_STATE_CONNECTING:I = 0x1

.field public static final DISPLAY_STATE_NOT_CONNECTED:I = 0x0

.field public static final FEATURE_STATE_DISABLED:I = 0x1

.field public static final FEATURE_STATE_OFF:I = 0x2

.field public static final FEATURE_STATE_ON:I = 0x3

.field public static final FEATURE_STATE_UNAVAILABLE:I = 0x0

.field public static final SCAN_STATE_NOT_SCANNING:I = 0x0

.field public static final SCAN_STATE_SCANNING:I = 0x1


# instance fields
.field private final mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field private final mActiveDisplayState:I

.field private final mDisplays:[Landroid/hardware/display/WifiDisplay;

.field private final mFeatureState:I

.field private final mScanState:I

.field private final mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus$1;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplayStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/display/WifiDisplayStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 95
    sget-object v5, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 97
    return-void
.end method

.method public constructor <init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .locals 2
    .param p1, "featureState"    # I
    .param p2, "scanState"    # I
    .param p3, "activeDisplayState"    # I
    .param p4, "activeDisplay"    # Landroid/hardware/display/WifiDisplay;
    .param p5, "displays"    # [Landroid/hardware/display/WifiDisplay;
    .param p6, "sessionInfo"    # Landroid/hardware/display/WifiDisplaySessionInfo;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-nez p5, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displays must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iput p1, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    .line 106
    iput p2, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    .line 107
    iput p3, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    .line 108
    iput-object p4, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 109
    iput-object p5, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 111
    if-eqz p6, :cond_1

    .end local p6    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :goto_0
    iput-object p6, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 112
    return-void

    .line 111
    .restart local p6    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :cond_1
    new-instance p6, Landroid/hardware/display/WifiDisplaySessionInfo;

    .end local p6    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    invoke-direct {p6}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveDisplay()Landroid/hardware/display/WifiDisplay;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public getActiveDisplayState()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    return v0
.end method

.method public getDisplays()[Landroid/hardware/display/WifiDisplay;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public getFeatureState()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    return v0
.end method

.method public getScanState()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    return v0
.end method

.method public getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiDisplayStatus{featureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scanState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 171
    iget v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v4, :cond_0

    .line 176
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v4, p1, p2}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    .line 182
    :goto_0
    iget-object v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .local v0, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 184
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 179
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 187
    .restart local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    iget-object v4, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {v4, p1, p2}, Landroid/hardware/display/WifiDisplaySessionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 188
    return-void
.end method
