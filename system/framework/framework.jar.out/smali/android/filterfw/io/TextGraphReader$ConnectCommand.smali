.class Landroid/filterfw/io/TextGraphReader$ConnectCommand;
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
    name = "ConnectCommand"
.end annotation


# instance fields
.field private mSourceFilter:Ljava/lang/String;

.field private mSourcePort:Ljava/lang/String;

.field private mTargetFilter:Ljava/lang/String;

.field private mTargetName:Ljava/lang/String;

.field final synthetic this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "sourceFilter"    # Ljava/lang/String;
    .param p3, "sourcePort"    # Ljava/lang/String;
    .param p4, "targetFilter"    # Ljava/lang/String;
    .param p5, "targetName"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourceFilter:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourcePort:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetFilter:Ljava/lang/String;

    .line 137
    iput-object p5, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetName:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public execute(Landroid/filterfw/io/TextGraphReader;)V
    .locals 5
    .param p1, "reader"    # Landroid/filterfw/io/TextGraphReader;

    .prologue
    .line 142
    # getter for: Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->access$200(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourceFilter:Ljava/lang/String;

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourcePort:Ljava/lang/String;

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetFilter:Ljava/lang/String;

    iget-object v4, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/filterfw/core/FilterGraph;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method
