.class public Landroid/location/LocationPolicyManager;
.super Ljava/lang/Object;
.source "LocationPolicyManager.java"


# static fields
.field private static final ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_REJECT_ALL_BACKGROUND:I = 0x1

.field public static final POLICY_REJECT_HIGH_POWER_BACKGROUND:I = 0x2

.field public static final POLICY_REJECT_NON_PASSIVE_BACKGROUND:I = 0x4

.field public static final RULE_ALLOW_ALL:I = 0x0

.field public static final RULE_REJECT_ALL:I = 0x1

.field public static final RULE_REJECT_HIGH_POWER:I = 0x2

.field public static final RULE_REJECT_NON_PASSIVE:I = 0x4


# instance fields
.field private mService:Landroid/location/ILocationPolicyManager;


# direct methods
.method public constructor <init>(Landroid/location/ILocationPolicyManager;)V
    .locals 2
    .param p1, "service"    # Landroid/location/ILocationPolicyManager;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "missing ILocationPolicyManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    .line 50
    return-void
.end method

.method public static dumpPolicy(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "policy"    # I

    .prologue
    .line 182
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 183
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "REJECT_ALL_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 186
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "REJECT_HIGH_POWER_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 189
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 190
    const-string v0, "REJECT_NON_PASSIVE_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 192
    :cond_2
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public static dumpRules(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "rules"    # I

    .prologue
    .line 197
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 198
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "REJECT_ALL"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 201
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 202
    const-string v0, "REJECT_HIGH_POWER"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 204
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 205
    const-string v0, "REJECT_NON_PASSIVE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 207
    :cond_2
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string v0, "locationpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationPolicyManager;

    return-object v0
.end method

.method public static isUidValidForPolicy(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    .line 149
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkUidNavigationScreenLock(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationPolicyManager;->checkUidNavigationScreenLock(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 95
    :goto_0
    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRestrictBackground()Z
    .locals 2

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1}, Landroid/location/ILocationPolicyManager;->getRestrictBackground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 139
    :goto_0
    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUidPolicy(I)I
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationPolicyManager;->getUidPolicy(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 2
    .param p1, "policy"    # I

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationPolicyManager;->getUidsWithPolicy(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public registerListener(Landroid/location/ILocationPolicyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/ILocationPolicyListener;

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->registerListener(Landroid/location/ILocationPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setLocationPolicies([Landroid/location/LocationPolicy;)V
    .locals 1
    .param p1, "policies"    # [Landroid/location/LocationPolicy;

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setLocationPolicies([Landroid/location/LocationPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setRestrictBackground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUidNavigationStart(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setUidNavigationStart(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUidNavigationStop(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setUidNavigationStop(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/location/ILocationPolicyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/ILocationPolicyListener;

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->unregisterListener(Landroid/location/ILocationPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method
