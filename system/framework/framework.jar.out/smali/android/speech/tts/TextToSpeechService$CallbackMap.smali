.class Landroid/speech/tts/TextToSpeechService$CallbackMap;
.super Landroid/os/RemoteCallbackList;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Landroid/speech/tts/ITextToSpeechCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallerToCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/speech/tts/ITextToSpeechCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method private constructor <init>(Landroid/speech/tts/TextToSpeechService;)V
    .locals 1

    .prologue
    .line 948
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 949
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/tts/TextToSpeechService;Landroid/speech/tts/TextToSpeechService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "x1"    # Landroid/speech/tts/TextToSpeechService$1;

    .prologue
    .line 948
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    return-void
.end method

.method private getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;
    .locals 4
    .param p1, "caller"    # Ljava/lang/Object;

    .prologue
    .line 1017
    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    .line 1018
    .local v0, "asBinder":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v3

    .line 1019
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/ITextToSpeechCallback;

    .line 1020
    .local v1, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    monitor-exit v3

    .line 1022
    return-object v1

    .line 1020
    .end local v1    # "cb":Landroid/speech/tts/ITextToSpeechCallback;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public dispatchOnDone(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 968
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 969
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_0

    .line 975
    :goto_0
    return-void

    .line 971
    :cond_0
    :try_start_0
    invoke-interface {v0, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onDone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 972
    :catch_0
    move-exception v1

    .line 973
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback onDone failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchOnError(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 989
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 990
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_0

    .line 996
    :goto_0
    return-void

    .line 992
    :cond_0
    :try_start_0
    invoke-interface {v0, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 993
    :catch_0
    move-exception v1

    .line 994
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback onError failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchOnStart(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 978
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 979
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_0

    .line 986
    :goto_0
    return-void

    .line 981
    :cond_0
    :try_start_0
    invoke-interface {v0, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onStart(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 982
    :catch_0
    move-exception v1

    .line 983
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback onStart failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public kill()V
    .locals 2

    .prologue
    .line 1009
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v1

    .line 1010
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1011
    invoke-super {p0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1012
    monitor-exit v1

    .line 1013
    return-void

    .line 1012
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/IInterface;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 948
    check-cast p1, Landroid/speech/tts/ITextToSpeechCallback;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->onCallbackDied(Landroid/speech/tts/ITextToSpeechCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onCallbackDied(Landroid/speech/tts/ITextToSpeechCallback;Ljava/lang/Object;)V
    .locals 3
    .param p1, "callback"    # Landroid/speech/tts/ITextToSpeechCallback;
    .param p2, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 1000
    move-object v0, p2

    check-cast v0, Landroid/os/IBinder;

    .line 1001
    .local v0, "caller":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v2

    .line 1002
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    .line 1005
    return-void

    .line 1003
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V
    .locals 3
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "cb"    # Landroid/speech/tts/ITextToSpeechCallback;

    .prologue
    .line 953
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v2

    .line 955
    if-eqz p2, :cond_1

    .line 956
    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 957
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/ITextToSpeechCallback;

    .line 961
    .local v0, "old":Landroid/speech/tts/ITextToSpeechCallback;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    .line 962
    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->unregister(Landroid/os/IInterface;)Z

    .line 964
    :cond_0
    monitor-exit v2

    .line 965
    return-void

    .line 959
    .end local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    :cond_1
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/ITextToSpeechCallback;

    .restart local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    goto :goto_0

    .line 964
    .end local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
