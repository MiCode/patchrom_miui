.class public Lcom/android/settings/dirac/DiracUtils;
.super Ljava/lang/Object;
.source "DiracUtils.java"


# static fields
.field static final TAG:Ljava/lang/String;

.field private static sDiracUtil:Lcom/android/settings/dirac/DiracUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/android/settings/dirac/DiracUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dirac/DiracUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/settings/dirac/DiracUtils;
    .locals 4

    .prologue
    .line 24
    const-class v3, Lcom/android/settings/dirac/DiracUtils;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/settings/dirac/DiracUtils;->sDiracUtil:Lcom/android/settings/dirac/DiracUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 26
    :try_start_1
    const-string v2, "com.android.settings.dirac.PiscesDiracUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 27
    .local v1, diracUtilFactory:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 28
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 29
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dirac/DiracUtils;

    sput-object v2, Lcom/android/settings/dirac/DiracUtils;->sDiracUtil:Lcom/android/settings/dirac/DiracUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Lcom/android/settings/dirac/DiracUtils;->sDiracUtil:Lcom/android/settings/dirac/DiracUtils;

    if-nez v2, :cond_1

    .line 34
    new-instance v2, Lcom/android/settings/dirac/DiracUtils;

    invoke-direct {v2}, Lcom/android/settings/dirac/DiracUtils;-><init>()V

    sput-object v2, Lcom/android/settings/dirac/DiracUtils;->sDiracUtil:Lcom/android/settings/dirac/DiracUtils;

    .line 38
    :cond_1
    sget-object v2, Lcom/android/settings/dirac/DiracUtils;->sDiracUtil:Lcom/android/settings/dirac/DiracUtils;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    .line 24
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 31
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "param"

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, value:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 104
    const-string v2, "="

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 106
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .end local v0           #index:I
    :cond_0
    :goto_0
    return-object v1

    .line 108
    .restart local v0       #index:I
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static supportDirac(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static toParameter(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 98
    const-string v0, "%s=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDiracState(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    .line 55
    const/4 v3, 0x0

    .line 57
    .local v3, value:I
    const-string v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 58
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v5, "dirac"

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, param:Ljava/lang/String;
    sget-object v5, Lcom/android/settings/dirac/DiracUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get parameter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {v2}, Lcom/android/settings/dirac/DiracUtils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, valueStr:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 63
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 69
    :cond_0
    :goto_0
    return v3

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/android/settings/dirac/DiracUtils;->TAG:Ljava/lang/String;

    const-string v6, "refreshDiracState"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDiracStateSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, summaryId:I
    invoke-virtual {p0, p1}, Lcom/android/settings/dirac/DiracUtils;->getDiracState(Landroid/content/Context;)I

    move-result v1

    .line 75
    .local v1, val:I
    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 77
    :pswitch_0
    const v0, 0x7f0c08be

    .line 78
    goto :goto_0

    .line 80
    :pswitch_1
    const v0, 0x7f0c08bf

    .line 81
    goto :goto_0

    .line 83
    :pswitch_2
    const v0, 0x7f0c08c0

    .line 84
    goto :goto_0

    .line 89
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setDiracState(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "value"

    .prologue
    .line 42
    sget-object v2, Lcom/android/settings/dirac/DiracUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set dirac state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-eqz p2, :cond_0

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    .line 44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad value, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_0
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 49
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v2, "dirac"

    invoke-static {v2, p2}, Lcom/android/settings/dirac/DiracUtils;->toParameter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, param:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/dirac/DiracUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setLevel(Landroid/content/Context;IF)V
    .locals 5
    .parameter "context"
    .parameter "band"
    .parameter "level"

    .prologue
    .line 93
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 94
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v1, "diracband=%d;value=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 95
    return-void
.end method
