.class public Landroid/app/MiuiNotification;
.super Ljava/lang/Object;
.source "MiuiNotification.java"


# static fields
.field public static final TYPE_ADVERTISEMENT:I = 0x1


# instance fields
.field public customizedIcon:Z

.field private enableFloat:Z

.field private exitFloatingIntent:Landroid/app/PendingIntent;

.field private floatTime:I

.field private messageClassName:Ljava/lang/CharSequence;

.field private messageCount:I

.field private targetPkg:Ljava/lang/CharSequence;

.field public traceContent:Ljava/lang/CharSequence;

.field public traceType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v1, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    .line 38
    const/16 v0, 0x1388

    iput v0, p0, Landroid/app/MiuiNotification;->floatTime:I

    .line 47
    iput v1, p0, Landroid/app/MiuiNotification;->messageCount:I

    .line 55
    return-void
.end method

.method public static getLedPwmOffOn(I)[I
    .locals 3
    .param p0, "totalLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 178
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 179
    .local v0, "values":[I
    div-int/lit8 v1, p0, 0x4

    mul-int/lit8 v1, v1, 0x3

    aput v1, v0, v2

    .line 180
    const/4 v1, 0x1

    aget v2, v0, v2

    sub-int v2, p0, v2

    aput v2, v0, v1

    .line 181
    return-object v0
.end method


# virtual methods
.method public getExitFloatingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getFloatTime()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Landroid/app/MiuiNotification;->floatTime:I

    return v0
.end method

.method public getMessageClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Landroid/app/MiuiNotification;->messageCount:I

    return v0
.end method

.method public getTargetPkg()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isEnableFloat()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/MiuiNotification;->customizedIcon:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/MiuiNotification;->traceType:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_1
    iput-boolean v1, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/MiuiNotification;->floatTime:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    .line 135
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/MiuiNotification;->messageCount:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    .line 139
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 122
    goto :goto_0

    :cond_5
    move v1, v2

    .line 127
    goto :goto_1
.end method

.method public setCustomizedIcon(Z)Landroid/app/MiuiNotification;
    .locals 0
    .param p1, "customizedIcon"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Landroid/app/MiuiNotification;->customizedIcon:Z

    .line 112
    return-object p0
.end method

.method public setEnableFloat(Z)Landroid/app/MiuiNotification;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    .line 84
    return-object p0
.end method

.method public setExitFloatingIntent(Landroid/app/PendingIntent;)Landroid/app/MiuiNotification;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 78
    iput-object p1, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    .line 79
    return-object p0
.end method

.method public setFloatTime(I)Landroid/app/MiuiNotification;
    .locals 0
    .param p1, "floatTime"    # I

    .prologue
    .line 100
    if-lez p1, :cond_0

    .line 101
    iput p1, p0, Landroid/app/MiuiNotification;->floatTime:I

    .line 103
    :cond_0
    return-object p0
.end method

.method public setMessageClassName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "messageClassName"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    iput-object p1, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    .line 63
    return-void
.end method

.method public setMessageCount(I)V
    .locals 0
    .param p1, "messageCount"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/app/MiuiNotification;->messageCount:I

    .line 71
    return-void
.end method

.method public setTargetPkg(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/CharSequence;

    .prologue
    .line 88
    iput-object p1, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    .line 89
    return-void
.end method

.method public setTo(Landroid/app/MiuiNotification;)V
    .locals 1
    .param p1, "extraNotification"    # Landroid/app/MiuiNotification;

    .prologue
    .line 185
    iget v0, p1, Landroid/app/MiuiNotification;->traceType:I

    iput v0, p0, Landroid/app/MiuiNotification;->traceType:I

    .line 186
    iget-object v0, p1, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    .line 187
    iget-boolean v0, p1, Landroid/app/MiuiNotification;->customizedIcon:Z

    iput-boolean v0, p0, Landroid/app/MiuiNotification;->customizedIcon:Z

    .line 188
    iget-boolean v0, p1, Landroid/app/MiuiNotification;->enableFloat:Z

    iput-boolean v0, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    .line 189
    iget v0, p1, Landroid/app/MiuiNotification;->floatTime:I

    iput v0, p0, Landroid/app/MiuiNotification;->floatTime:I

    .line 190
    iget-object v0, p1, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    .line 191
    iget-object v0, p1, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    .line 192
    iget v0, p1, Landroid/app/MiuiNotification;->messageCount:I

    iput v0, p0, Landroid/app/MiuiNotification;->messageCount:I

    .line 193
    iget-object v0, p1, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    .line 194
    return-void
.end method

.method public setTrace(ILjava/lang/CharSequence;)Landroid/app/MiuiNotification;
    .locals 0
    .param p1, "type"    # I
    .param p2, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 116
    iput p1, p0, Landroid/app/MiuiNotification;->traceType:I

    .line 117
    iput-object p2, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    .line 118
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget-boolean v0, p0, Landroid/app/MiuiNotification;->customizedIcon:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Landroid/app/MiuiNotification;->traceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 150
    :goto_1
    iget-boolean v0, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Landroid/app/MiuiNotification;->floatTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 158
    :goto_3
    iget-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    .line 159
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    :goto_4
    iget v0, p0, Landroid/app/MiuiNotification;->messageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 166
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 171
    :goto_5
    return-void

    :cond_0
    move v0, v2

    .line 142
    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 150
    goto :goto_2

    .line 156
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 162
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 169
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5
.end method
