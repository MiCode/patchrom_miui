.class Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;
.super Ljava/lang/Object;
.source "LoudnessEnhancer.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/LoudnessEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/LoudnessEnhancer;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/LoudnessEnhancer;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/LoudnessEnhancer;Landroid/media/audiofx/LoudnessEnhancer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/audiofx/LoudnessEnhancer;
    .param p2, "x1"    # Landroid/media/audiofx/LoudnessEnhancer$1;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;-><init>(Landroid/media/audiofx/LoudnessEnhancer;)V

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
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 168
    if-eqz p2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const/4 v0, 0x0

    .line 172
    .local v0, "l":Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    # getter for: Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/audiofx/LoudnessEnhancer;->access$000(Landroid/media/audiofx/LoudnessEnhancer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 173
    :try_start_0
    iget-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    # getter for: Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;
    invoke-static {v3}, Landroid/media/audiofx/LoudnessEnhancer;->access$100(Landroid/media/audiofx/LoudnessEnhancer;)Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 174
    iget-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    # getter for: Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;
    invoke-static {v3}, Landroid/media/audiofx/LoudnessEnhancer;->access$100(Landroid/media/audiofx/LoudnessEnhancer;)Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    move-result-object v0

    .line 176
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    const/4 v1, -0x1

    .line 179
    .local v1, "p":I
    const/high16 v2, -0x80000000

    .line 181
    .local v2, "v":I
    array-length v3, p3

    if-ne v3, v6, :cond_3

    .line 182
    iget-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-virtual {v3, p3, v5}, Landroid/media/audiofx/LoudnessEnhancer;->byteArrayToInt([BI)I

    move-result v1

    .line 184
    :cond_3
    array-length v3, p4

    if-ne v3, v6, :cond_4

    .line 185
    iget-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-virtual {v3, p4, v5}, Landroid/media/audiofx/LoudnessEnhancer;->byteArrayToInt([BI)I

    move-result v2

    .line 187
    :cond_4
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 188
    iget-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-interface {v0, v3, v1, v2}, Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/LoudnessEnhancer;II)V

    goto :goto_0

    .line 176
    .end local v1    # "p":I
    .end local v2    # "v":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
