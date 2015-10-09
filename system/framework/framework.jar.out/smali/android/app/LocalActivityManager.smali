.class public Landroid/app/LocalActivityManager;
.super Ljava/lang/Object;
.source "LocalActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LocalActivityManager$LocalActivityRecord;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final CREATED:I = 0x2

.field static final DESTROYED:I = 0x5

.field static final INITIALIZING:I = 0x1

.field static final RESTORED:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocalActivityManager"

.field private static final localLOGV:Z


# instance fields
.field private final mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/app/ActivityThread;

.field private mCurState:I

.field private mFinishing:Z

.field private final mParent:Landroid/app/Activity;

.field private mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

.field private mSingleMode:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "singleMode"    # Z

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 105
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 106
    iput-object p1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    .line 107
    iput-boolean p2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    .line 108
    return-void
.end method

.method private moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V
    .locals 13
    .param p1, "r"    # Landroid/app/LocalActivityManager$LocalActivityRecord;
    .param p2, "desiredState"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x4

    .line 111
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    if-ne v0, v12, :cond_5

    .line 118
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v9

    .line 120
    .local v9, "lastNonConfigurationInstances":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 121
    .local v8, "instanceObj":Ljava/lang/Object;
    if-eqz v9, :cond_2

    .line 122
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 124
    .end local v8    # "instanceObj":Ljava/lang/Object;
    :cond_2
    const/4 v7, 0x0

    .line 125
    .local v7, "instance":Landroid/app/Activity$NonConfigurationInstances;
    if-eqz v8, :cond_3

    .line 126
    new-instance v7, Landroid/app/Activity$NonConfigurationInstances;

    .end local v7    # "instance":Landroid/app/Activity$NonConfigurationInstances;
    invoke-direct {v7}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    .line 127
    .restart local v7    # "instance":Landroid/app/Activity$NonConfigurationInstances;
    iput-object v8, v7, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 132
    :cond_3
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_4

    .line 133
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 135
    :cond_4
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 137
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 142
    iput v11, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 144
    if-ne p2, v10, :cond_0

    .line 146
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, v12}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 147
    iput v10, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    goto :goto_0

    .line 159
    .end local v7    # "instance":Landroid/app/Activity$NonConfigurationInstances;
    .end local v9    # "lastNonConfigurationInstances":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    if-ne p2, v11, :cond_6

    .line 163
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    .line 164
    iput v11, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 166
    :cond_6
    if-ne p2, v10, :cond_0

    .line 168
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    .line 169
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, v12}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 170
    iput v10, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    goto :goto_0

    .line 175
    :pswitch_1
    if-ne p2, v10, :cond_7

    .line 178
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, v12}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 179
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 180
    iput v10, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 182
    :cond_7
    if-ne p2, v2, :cond_0

    .line 184
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, v3}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;Z)V

    .line 185
    iput v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    goto/16 :goto_0

    .line 190
    :pswitch_2
    if-ne p2, v11, :cond_8

    .line 192
    iget-boolean v0, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    invoke-direct {p0, p1, v0}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 193
    iput v11, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 195
    :cond_8
    if-ne p2, v2, :cond_0

    .line 197
    iget-boolean v0, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    invoke-direct {p0, p1, v0}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 199
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, v3}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;Z)V

    .line 200
    iput v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    goto/16 :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;
    .locals 4
    .param p1, "r"    # Landroid/app/LocalActivityManager$LocalActivityRecord;
    .param p2, "finish"    # Z

    .prologue
    const/4 v3, 0x0

    .line 358
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 359
    .local v0, "win":Landroid/view/Window;
    iget v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_0

    .line 360
    invoke-direct {p0, p1, p2}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 363
    :cond_0
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v1, p1, p2}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 364
    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 365
    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 366
    if-eqz p2, :cond_1

    .line 367
    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 369
    :cond_1
    const/4 v1, 0x5

    iput v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 370
    return-object v0
.end method

.method private performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V
    .locals 3
    .param p1, "r"    # Landroid/app/LocalActivityManager$LocalActivityRecord;
    .param p2, "finishing"    # Z

    .prologue
    .line 207
    iget-object v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 208
    .local v1, "needState":Z
    :goto_0
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v2, p1, p2, v1}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    move-result-object v0

    .line 210
    .local v0, "instanceState":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 211
    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 213
    :cond_0
    return-void

    .line 207
    .end local v0    # "instanceState":Landroid/os/Bundle;
    .end local v1    # "needState":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "finish"    # Z

    .prologue
    .line 386
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 387
    .local v0, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v1, 0x0

    .line 388
    .local v1, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 389
    invoke-direct {p0, v0, p2}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    move-result-object v1

    .line 390
    if-eqz p2, :cond_0

    .line 391
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 395
    :cond_0
    return-object v1
.end method

.method public dispatchCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 452
    if-eqz p1, :cond_1

    .line 453
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 455
    .local v3, "id":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 456
    .local v0, "astate":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 457
    .local v4, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v4, :cond_0

    .line 458
    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    .end local v0    # "astate":Landroid/os/Bundle;
    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "LocalActivityManager"

    const-string v6, "Exception thrown when restoring LocalActivityManager state"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 460
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "astate":Landroid/os/Bundle;
    .restart local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    :try_start_1
    new-instance v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 461
    .restart local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 462
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 472
    .end local v0    # "astate":Landroid/os/Bundle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_1
    const/4 v5, 0x2

    iput v5, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 473
    return-void
.end method

.method public dispatchDestroy(Z)V
    .locals 4
    .param p1, "finishing"    # Z

    .prologue
    .line 623
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 624
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 625
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 627
    .local v2, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v3, v2, p1}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 624
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    .end local v2    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 630
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 631
    return-void
.end method

.method public dispatchPause(Z)V
    .locals 6
    .param p1, "finishing"    # Z

    .prologue
    const/4 v5, 0x3

    .line 546
    if-eqz p1, :cond_0

    .line 547
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    .line 549
    :cond_0
    iput v5, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 550
    iget-boolean v3, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v3, :cond_2

    .line 551
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v3, :cond_1

    .line 552
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v3, v5}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 563
    :cond_1
    return-void

    .line 555
    :cond_2
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 556
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 557
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 558
    .local v2, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    iget v3, v2, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 559
    invoke-direct {p0, v2, v5}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 556
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchResume()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 520
    iput v3, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 521
    iget-boolean v2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v2, :cond_1

    .line 522
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v2, :cond_0

    .line 523
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v2, v3}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 531
    :cond_0
    return-void

    .line 526
    :cond_1
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 527
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 528
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v2, v3}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchRetainNonConfigurationInstance()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    const/4 v3, 0x0

    .line 591
    .local v3, "instanceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 592
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 593
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 594
    .local v4, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 595
    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    .line 596
    .local v2, "instance":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 597
    if-nez v3, :cond_0

    .line 598
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "instanceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 600
    .restart local v3    # "instanceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .end local v2    # "instance":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_2
    return-object v3
.end method

.method public dispatchStop()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 573
    iput v4, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 574
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 575
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 576
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 577
    .local v2, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    invoke-direct {p0, v2, v4}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    .end local v2    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_0
    return-void
.end method

.method public getActivity(Ljava/lang/String;)Landroid/app/Activity;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 434
    .local v0, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllActivities()V
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 613
    return-void
.end method

.method public saveInstanceState()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 486
    const/4 v4, 0x0

    .line 490
    .local v4, "state":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 491
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 492
    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 493
    .local v3, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-nez v4, :cond_0

    .line 494
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 496
    .restart local v4    # "state":Landroid/os/Bundle;
    :cond_0
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-nez v5, :cond_1

    iget v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    :cond_1
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_2

    .line 500
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 501
    .local v1, "childState":Landroid/os/Bundle;
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 502
    iput-object v1, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 504
    .end local v1    # "childState":Landroid/os/Bundle;
    :cond_2
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 505
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iget-object v6, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 491
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    .end local v3    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_4
    return-object v4
.end method

.method public startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 261
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    if-ne v6, v8, :cond_0

    .line 262
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Activities can\'t be added until the containing group has been created."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 266
    :cond_0
    const/4 v1, 0x0

    .line 267
    .local v1, "adding":Z
    const/4 v5, 0x0

    .line 269
    .local v5, "sameIntent":Z
    const/4 v0, 0x0

    .line 272
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 273
    .local v4, "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-nez v4, :cond_6

    .line 275
    new-instance v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .end local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    invoke-direct {v4, p1, p2}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 276
    .restart local v4    # "r":Landroid/app/LocalActivityManager$LocalActivityRecord;
    const/4 v1, 0x1

    .line 284
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 285
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v6, p2}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 290
    :cond_2
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_3

    .line 291
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 295
    .local v3, "old":Landroid/app/LocalActivityManager$LocalActivityRecord;
    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_3

    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 296
    const/4 v6, 0x3

    invoke-direct {p0, v3, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 300
    .end local v3    # "old":Landroid/app/LocalActivityManager$LocalActivityRecord;
    :cond_3
    if-eqz v1, :cond_7

    .line 302
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_4
    :goto_1
    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 344
    iput v8, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 345
    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 347
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 350
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_5

    .line 351
    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 353
    :cond_5
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    :goto_2
    return-object v6

    .line 277
    :cond_6
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_1

    .line 278
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    .line 279
    if-eqz v5, :cond_1

    .line 281
    iget-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 304
    :cond_7
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_4

    .line 307
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eq v0, v6, :cond_8

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 310
    :cond_8
    iget v6, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v6, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x20000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_b

    .line 313
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .local v2, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v6, v4, v2}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    .line 317
    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 318
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 319
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_a

    .line 320
    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 322
    :cond_a
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    goto :goto_2

    .line 324
    .end local v2    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    :cond_b
    if-eqz v5, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x4000000

    and-int/2addr v6, v7

    if-nez v6, :cond_d

    .line 328
    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 329
    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 330
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_c

    .line 331
    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 333
    :cond_c
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    goto :goto_2

    .line 340
    :cond_d
    invoke-direct {p0, v4, v8}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    goto/16 :goto_1
.end method
