.class Landroid/media/audiofx/PresetReverb$BaseParameterListener;
.super Ljava/lang/Object;
.source "PresetReverb.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/PresetReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/PresetReverb;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/PresetReverb;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/PresetReverb;Landroid/media/audiofx/PresetReverb$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/audiofx/PresetReverb;
    .param p2, "x1"    # Landroid/media/audiofx/PresetReverb$1;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Landroid/media/audiofx/PresetReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/PresetReverb;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 7
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "l":Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    # getter for: Landroid/media/audiofx/PresetReverb;->mParamListenerLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/audiofx/PresetReverb;->access$000(Landroid/media/audiofx/PresetReverb;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 198
    :try_start_0
    iget-object v3, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    # getter for: Landroid/media/audiofx/PresetReverb;->mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;
    invoke-static {v3}, Landroid/media/audiofx/PresetReverb;->access$100(Landroid/media/audiofx/PresetReverb;)Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    # getter for: Landroid/media/audiofx/PresetReverb;->mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;
    invoke-static {v3}, Landroid/media/audiofx/PresetReverb;->access$100(Landroid/media/audiofx/PresetReverb;)Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    move-result-object v0

    .line 201
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    if-eqz v0, :cond_3

    .line 203
    const/4 v1, -0x1

    .line 204
    .local v1, "p":I
    const/4 v2, -0x1

    .line 206
    .local v2, "v":S
    array-length v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 207
    iget-object v3, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    invoke-virtual {v3, p3, v6}, Landroid/media/audiofx/PresetReverb;->byteArrayToInt([BI)I

    move-result v1

    .line 209
    :cond_1
    array-length v3, p4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 210
    iget-object v3, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    invoke-virtual {v3, p4, v6}, Landroid/media/audiofx/PresetReverb;->byteArrayToShort([BI)S

    move-result v2

    .line 212
    :cond_2
    if-eq v1, v5, :cond_3

    if-eq v2, v5, :cond_3

    .line 213
    iget-object v3, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/PresetReverb;IIS)V

    .line 216
    .end local v1    # "p":I
    .end local v2    # "v":S
    :cond_3
    return-void

    .line 201
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
