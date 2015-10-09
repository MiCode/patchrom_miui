.class public abstract Landroid/filterfw/io/GraphReader;
.super Ljava/lang/Object;
.source "GraphReader.java"


# instance fields
.field protected mReferences:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    return-void
.end method


# virtual methods
.method public addReference(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public varargs addReferencesByKeysAndValues([Ljava/lang/Object;)V
    .locals 1
    .param p1, "references"    # [Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->setKeyValues([Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public addReferencesByMap(Landroid/filterfw/core/KeyValueMap;)V
    .locals 1
    .param p1, "refs"    # Landroid/filterfw/core/KeyValueMap;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    .line 63
    return-void
.end method

.method public readGraphResource(Landroid/content/Context;I)Landroid/filterfw/core/FilterGraph;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x400

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 43
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 44
    .local v4, "reader":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 45
    .local v5, "writer":Ljava/io/StringWriter;
    new-array v0, v7, [C

    .line 48
    .local v0, "buffer":[C
    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x400

    :try_start_0
    invoke-virtual {v4, v0, v6, v7}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_0

    .line 49
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Could not read specified resource file!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 54
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bytesRead":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/filterfw/io/GraphReader;->readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;

    move-result-object v6

    return-object v6
.end method

.method public abstract readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation
.end method

.method public abstract readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation
.end method
