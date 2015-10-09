.class public Landroid/os/SELinux;
.super Ljava/lang/Object;
.source "SELinux.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SELinux"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native getBooleanNames()[Ljava/lang/String;
.end method

.method public static final native getBooleanValue(Ljava/lang/String;)Z
.end method

.method public static final native getContext()Ljava/lang/String;
.end method

.method public static final native getFileContext(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native getPeerContext(Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method public static final native getPidContext(I)Ljava/lang/String;
.end method

.method public static final native isSELinuxEnabled()Z
.end method

.method public static final native isSELinuxEnforced()Z
.end method

.method private static native native_restorecon(Ljava/lang/String;)Z
.end method

.method public static restorecon(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 169
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 173
    :goto_0
    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SELinux"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting canonical path. Restorecon failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restorecon(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 140
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 141
    :cond_0
    invoke-static {p0}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final native setBooleanValue(Ljava/lang/String;Z)Z
.end method

.method public static final native setFSCreateContext(Ljava/lang/String;)Z
.end method

.method public static final native setFileContext(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native setSELinuxEnforce(Z)Z
.end method
