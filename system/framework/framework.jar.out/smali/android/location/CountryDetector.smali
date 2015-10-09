.class public Landroid/location/CountryDetector;
.super Ljava/lang/Object;
.source "CountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/CountryDetector$ListenerTransport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/CountryListener;",
            "Landroid/location/CountryDetector$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/location/ICountryDetector;


# direct methods
.method public constructor <init>(Landroid/location/ICountryDetector;)V
    .locals 1
    .param p1, "service"    # Landroid/location/ICountryDetector;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    .line 96
    return-void
.end method


# virtual methods
.method public addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/CountryListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 123
    iget-object v3, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 124
    :try_start_0
    iget-object v2, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    new-instance v1, Landroid/location/CountryDetector$ListenerTransport;

    invoke-direct {v1, p1, p2}, Landroid/location/CountryDetector$ListenerTransport;-><init>(Landroid/location/CountryListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .local v1, "transport":Landroid/location/CountryDetector$ListenerTransport;
    :try_start_1
    iget-object v2, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    invoke-interface {v2, v1}, Landroid/location/ICountryDetector;->addCountryListener(Landroid/location/ICountryListener;)V

    .line 128
    iget-object v2, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .end local v1    # "transport":Landroid/location/CountryDetector$ListenerTransport;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 134
    return-void

    .line 129
    .restart local v1    # "transport":Landroid/location/CountryDetector$ListenerTransport;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CountryDetector"

    const-string v4, "addCountryListener: RemoteException"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "transport":Landroid/location/CountryDetector$ListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public detectCountry()Landroid/location/Country;
    .locals 3

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    invoke-interface {v1}, Landroid/location/ICountryDetector;->detectCountry()Landroid/location/Country;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CountryDetector"

    const-string v2, "detectCountry: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeCountryListener(Landroid/location/CountryListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/CountryListener;

    .prologue
    .line 140
    iget-object v3, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 141
    :try_start_0
    iget-object v2, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector$ListenerTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .local v1, "transport":Landroid/location/CountryDetector$ListenerTransport;
    if-eqz v1, :cond_0

    .line 144
    :try_start_1
    iget-object v2, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v2, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    invoke-interface {v2, v1}, Landroid/location/ICountryDetector;->removeCountryListener(Landroid/location/ICountryListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 151
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CountryDetector"

    const-string/jumbo v4, "removeCountryListener: RemoteException"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "transport":Landroid/location/CountryDetector$ListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
