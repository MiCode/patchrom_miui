.class public Landroid/app/TaskStackBuilder;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskStackBuilder"


# instance fields
.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "a"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 67
    iput-object p1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v0, Landroid/app/TaskStackBuilder;

    invoke-direct {v0, p0}, Landroid/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;
    .locals 1
    .param p1, "nextIntent"    # Landroid/content/Intent;

    .prologue
    .line 89
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-object p0
.end method

.method public addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;
    .locals 2
    .param p1, "nextIntent"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 107
    .local v0, "target":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 108
    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 110
    :cond_0
    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;

    .line 113
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 114
    return-object p0
.end method

.method public addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;
    .locals 3
    .param p1, "sourceActivity"    # Landroid/app/Activity;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 129
    .local v0, "parent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 133
    .local v1, "target":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 134
    iget-object v2, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 136
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;

    .line 137
    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 139
    .end local v1    # "target":Landroid/content/ComponentName;
    :cond_1
    return-object p0
.end method

.method public addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;
    .locals 9
    .param p1, "sourceActivityName"    # Landroid/content/ComponentName;

    .prologue
    .line 164
    iget-object v7, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 165
    .local v2, "insertAt":I
    iget-object v7, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 167
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 168
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 169
    .local v4, "parentActivity":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 170
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v6, "target":Landroid/content/ComponentName;
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 172
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 173
    if-nez v4, :cond_0

    if-nez v2, :cond_0

    invoke-static {v6}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 176
    .local v3, "parent":Landroid/content/Intent;
    :goto_1
    iget-object v7, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "parent":Landroid/content/Intent;
    .end local v4    # "parentActivity":Ljava/lang/String;
    .end local v6    # "target":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "TaskStackBuilder"

    const-string v8, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 173
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "parentActivity":Ljava/lang/String;
    .restart local v6    # "target":Landroid/content/ComponentName;
    :cond_0
    :try_start_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 182
    .end local v6    # "target":Landroid/content/ComponentName;
    :cond_1
    return-object p0
.end method

.method public addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/app/TaskStackBuilder;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    return-object v0
.end method

.method public editIntentAt(I)Landroid/content/Intent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 201
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentCount()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 298
    iget-object v2, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Landroid/content/Intent;

    .line 299
    .local v1, "intents":[Landroid/content/Intent;
    array-length v2, v1

    if-nez v2, :cond_1

    .line 307
    :cond_0
    return-object v1

    .line 301
    :cond_1
    new-instance v3, Landroid/content/Intent;

    iget-object v2, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v2, 0x1000c000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v1, v4

    .line 304
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 305
    new-instance v3, Landroid/content/Intent;

    iget-object v2, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v3, v1, v0

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPendingIntent(II)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 267
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, p1, v1, p2, p3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 281
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    move-result-object v2

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public startActivities()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    .line 209
    return-void
.end method

.method public startActivities(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 232
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 233
    return-void
.end method

.method public startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 222
    return-void
.end method
