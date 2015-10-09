.class Landroid/media/audiofx/Virtualizer$BaseParameterListener;
.super Ljava/lang/Object;
.source "Virtualizer.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Virtualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/Virtualizer;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/Virtualizer;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/Virtualizer;Landroid/media/audiofx/Virtualizer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/audiofx/Virtualizer;
    .param p2, "x1"    # Landroid/media/audiofx/Virtualizer$1;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Landroid/media/audiofx/Virtualizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Virtualizer;)V

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

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "l":Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    # getter for: Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/audiofx/Virtualizer;->access$000(Landroid/media/audiofx/Virtualizer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 183
    :try_start_0
    iget-object v3, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    # getter for: Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;
    invoke-static {v3}, Landroid/media/audiofx/Virtualizer;->access$100(Landroid/media/audiofx/Virtualizer;)Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v3, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    # getter for: Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;
    invoke-static {v3}, Landroid/media/audiofx/Virtualizer;->access$100(Landroid/media/audiofx/Virtualizer;)Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    move-result-object v0

    .line 186
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    if-eqz v0, :cond_3

    .line 188
    const/4 v1, -0x1

    .line 189
    .local v1, "p":I
    const/4 v2, -0x1

    .line 191
    .local v2, "v":S
    array-length v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 192
    iget-object v3, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v3, p3, v6}, Landroid/media/audiofx/Virtualizer;->byteArrayToInt([BI)I

    move-result v1

    .line 194
    :cond_1
    array-length v3, p4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 195
    iget-object v3, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v3, p4, v6}, Landroid/media/audiofx/Virtualizer;->byteArrayToShort([BI)S

    move-result v2

    .line 197
    :cond_2
    if-eq v1, v5, :cond_3

    if-eq v2, v5, :cond_3

    .line 198
    iget-object v3, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/Virtualizer;IIS)V

    .line 201
    .end local v1    # "p":I
    .end local v2    # "v":S
    :cond_3
    return-void

    .line 186
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
