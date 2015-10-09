.class public final Landroid/media/MediaRouterClientState$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterClientState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouterClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/MediaRouterClientState$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public description:Ljava/lang/String;

.field public enabled:Z

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public playbackStream:I

.field public playbackType:I

.field public presentationDisplayId:I

.field public statusCode:I

.field public supportedTypes:I

.field public volume:I

.field public volumeHandling:I

.field public volumeMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Landroid/media/MediaRouterClientState$RouteInfo$1;

    invoke-direct {v0}, Landroid/media/MediaRouterClientState$RouteInfo$1;-><init>()V

    sput-object v0, Landroid/media/MediaRouterClientState$RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaRouterClientState$RouteInfo;)V
    .locals 1
    .param p1, "other"    # Landroid/media/MediaRouterClientState$RouteInfo;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 120
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 121
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 122
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    .line 123
    iget-boolean v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    iput-boolean v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 124
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 125
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 126
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 127
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 128
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 129
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 130
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 131
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 146
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 110
    iput-boolean v2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 111
    iput v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 112
    iput v2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 113
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 114
    iput v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 115
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 116
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouteInfo{ id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedTypes=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

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
    .line 155
    iget-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-boolean v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
