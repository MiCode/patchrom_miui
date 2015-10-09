.class public final Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
.super Ljava/lang/Object;
.source "RemoteDisplayState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteDisplayState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteDisplayInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/RemoteDisplayState$RemoteDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final STATUS_AVAILABLE:I = 0x2

.field public static final STATUS_CONNECTED:I = 0x4

.field public static final STATUS_CONNECTING:I = 0x3

.field public static final STATUS_IN_USE:I = 0x1

.field public static final STATUS_NOT_AVAILABLE:I


# instance fields
.field public description:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public presentationDisplayId:I

.field public status:I

.field public volume:I

.field public volumeHandling:I

.field public volumeMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo$1;

    invoke-direct {v0}, Landroid/media/RemoteDisplayState$RemoteDisplayInfo$1;-><init>()V

    sput-object v0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)V
    .locals 1
    .param p1, "other"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iget-object v0, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    .line 121
    iget-object v0, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    .line 122
    iget-object v0, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    .line 123
    iget v0, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    iput v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    .line 124
    iget v0, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    iput v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    .line 125
    iget v0, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    iput v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    .line 126
    iget v0, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    iput v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    .line 127
    iget v0, p1, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    iput v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    .line 128
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    .line 114
    iput v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    .line 115
    iput v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    .line 117
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteDisplayInfo{ id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return-void
.end method
