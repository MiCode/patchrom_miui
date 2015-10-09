.class Landroid/filterfw/io/TextGraphReader$InitFilterCommand;
.super Ljava/lang/Object;
.source "TextGraphReader.java"

# interfaces
.implements Landroid/filterfw/io/TextGraphReader$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/io/TextGraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitFilterCommand"
.end annotation


# instance fields
.field private mParams:Landroid/filterfw/core/KeyValueMap;

.field final synthetic this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor <init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V
    .locals 0
    .param p2, "params"    # Landroid/filterfw/core/KeyValueMap;

    .prologue
    .line 108
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->mParams:Landroid/filterfw/core/KeyValueMap;

    .line 110
    return-void
.end method


# virtual methods
.method public execute(Landroid/filterfw/io/TextGraphReader;)V
    .locals 4
    .param p1, "reader"    # Landroid/filterfw/io/TextGraphReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .prologue
    .line 114
    # getter for: Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->access$100(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;

    move-result-object v1

    .line 116
    .local v1, "filter":Landroid/filterfw/core/Filter;
    :try_start_0
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->mParams:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, v2}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V
    :try_end_0
    .catch Landroid/filterfw/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    # getter for: Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->access$200(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    # getter for: Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;
    invoke-static {v3}, Landroid/filterfw/io/TextGraphReader;->access$100(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FilterGraph;->addFilter(Landroid/filterfw/core/Filter;)Z

    .line 121
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/filterfw/core/ProtocolException;
    new-instance v2, Landroid/filterfw/io/GraphIOException;

    invoke-virtual {v0}, Landroid/filterfw/core/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
