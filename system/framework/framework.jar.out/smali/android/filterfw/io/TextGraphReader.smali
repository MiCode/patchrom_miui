.class public Landroid/filterfw/io/TextGraphReader;
.super Landroid/filterfw/io/GraphReader;
.source "TextGraphReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/io/TextGraphReader$ConnectCommand;,
        Landroid/filterfw/io/TextGraphReader$InitFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;,
        Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;,
        Landroid/filterfw/io/TextGraphReader$Command;
    }
.end annotation


# instance fields
.field private mBoundReferences:Landroid/filterfw/core/KeyValueMap;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/filterfw/io/TextGraphReader$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFilter:Landroid/filterfw/core/Filter;

.field private mCurrentGraph:Landroid/filterfw/core/FilterGraph;

.field private mFactory:Landroid/filterfw/core/FilterFactory;

.field private mSettings:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/filterfw/io/GraphReader;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    .line 124
    return-void
.end method

.method static synthetic access$000(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;
    .locals 1
    .param p0, "x0"    # Landroid/filterfw/io/TextGraphReader;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    return-object v0
.end method

.method static synthetic access$100(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;
    .locals 1
    .param p0, "x0"    # Landroid/filterfw/io/TextGraphReader;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-object v0
.end method

.method static synthetic access$102(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/Filter;)Landroid/filterfw/core/Filter;
    .locals 0
    .param p0, "x0"    # Landroid/filterfw/io/TextGraphReader;
    .param p1, "x1"    # Landroid/filterfw/core/Filter;

    .prologue
    .line 39
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-object p1
.end method

.method static synthetic access$200(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;
    .locals 1
    .param p0, "x0"    # Landroid/filterfw/io/TextGraphReader;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    return-object v0
.end method

.method private applySettings()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v3}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    .local v1, "setting":Ljava/lang/String;
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v3, v1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 454
    .local v2, "value":Ljava/lang/Object;
    const-string v3, "autoBranch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 455
    const-class v3, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 456
    const-string/jumbo v3, "synced"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_0

    .line 458
    :cond_0
    const-string/jumbo v3, "unsynced"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 459
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_0

    .line 460
    :cond_1
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_0

    .line 463
    :cond_2
    new-instance v3, Landroid/filterfw/io/GraphIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown autobranch setting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 465
    :cond_3
    const-string v3, "discardUnconnectedOutputs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 466
    const-class v3, Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 467
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setDiscardUnconnectedOutputs(Z)V

    goto/16 :goto_0

    .line 469
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v3, Landroid/filterfw/io/GraphIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown @setting \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 472
    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method private bindExternal(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 428
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, p1, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    return-void

    .line 430
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    new-instance v1, Landroid/filterfw/io/GraphIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown external variable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "You must add a reference to this external in the host program using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "addReference(...)!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkReferences()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 443
    .local v1, "reference":Ljava/lang/String;
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    new-instance v2, Landroid/filterfw/io/GraphIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Host program specifies reference to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', which is not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "declared @external in graph file!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 449
    .end local v1    # "reference":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private executeCommands()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/io/TextGraphReader$Command;

    .line 486
    .local v0, "command":Landroid/filterfw/io/TextGraphReader$Command;
    invoke-interface {v0, p0}, Landroid/filterfw/io/TextGraphReader$Command;->execute(Landroid/filterfw/io/TextGraphReader;)V

    goto :goto_0

    .line 488
    .end local v0    # "command":Landroid/filterfw/io/TextGraphReader$Command;
    :cond_0
    return-void
.end method

.method private expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "expectedClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p3, :cond_0

    .line 478
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must have a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but found a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_0
    return-void
.end method

.method private parseString(Ljava/lang/String;)V
    .locals 49
    .param p1, "graphString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .prologue
    .line 170
    const-string v3, "@[a-zA-Z]+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v27

    .line 171
    .local v27, "commandPattern":Ljava/util/regex/Pattern;
    const-string v3, "\\}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v31

    .line 172
    .local v31, "curlyClosePattern":Ljava/util/regex/Pattern;
    const-string v3, "\\{"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v32

    .line 173
    .local v32, "curlyOpenPattern":Ljava/util/regex/Pattern;
    const-string v3, "(\\s+|//[^\\n]*\\n)+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v34

    .line 174
    .local v34, "ignorePattern":Ljava/util/regex/Pattern;
    const-string v3, "[a-zA-Z\\.]+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v38

    .line 175
    .local v38, "packageNamePattern":Ljava/util/regex/Pattern;
    const-string v3, "[a-zA-Z\\./:]+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v36

    .line 176
    .local v36, "libraryNamePattern":Ljava/util/regex/Pattern;
    const-string v3, "\\[[a-zA-Z0-9\\-_]+\\]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v40

    .line 177
    .local v40, "portPattern":Ljava/util/regex/Pattern;
    const-string v3, "=>"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v42

    .line 178
    .local v42, "rightArrowPattern":Ljava/util/regex/Pattern;
    const-string v3, ";"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v44

    .line 179
    .local v44, "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v3, "[a-zA-Z0-9\\-_]+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v47

    .line 181
    .local v47, "wordPattern":Ljava/util/regex/Pattern;
    const/4 v11, 0x0

    .line 182
    .local v11, "STATE_COMMAND":I
    const/16 v17, 0x1

    .line 183
    .local v17, "STATE_IMPORT_PKG":I
    const/4 v9, 0x2

    .line 184
    .local v9, "STATE_ADD_LIBRARY":I
    const/4 v15, 0x3

    .line 185
    .local v15, "STATE_FILTER_CLASS":I
    const/16 v16, 0x4

    .line 186
    .local v16, "STATE_FILTER_NAME":I
    const/4 v13, 0x5

    .line 187
    .local v13, "STATE_CURLY_OPEN":I
    const/16 v18, 0x6

    .line 188
    .local v18, "STATE_PARAMETERS":I
    const/4 v12, 0x7

    .line 189
    .local v12, "STATE_CURLY_CLOSE":I
    const/16 v22, 0x8

    .line 190
    .local v22, "STATE_SOURCE_FILTERNAME":I
    const/16 v23, 0x9

    .line 191
    .local v23, "STATE_SOURCE_PORT":I
    const/16 v19, 0xa

    .line 192
    .local v19, "STATE_RIGHT_ARROW":I
    const/16 v24, 0xb

    .line 193
    .local v24, "STATE_TARGET_FILTERNAME":I
    const/16 v25, 0xc

    .line 194
    .local v25, "STATE_TARGET_PORT":I
    const/16 v10, 0xd

    .line 195
    .local v10, "STATE_ASSIGNMENT":I
    const/16 v14, 0xe

    .line 196
    .local v14, "STATE_EXTERNAL":I
    const/16 v21, 0xf

    .line 197
    .local v21, "STATE_SETTING":I
    const/16 v20, 0x10

    .line 199
    .local v20, "STATE_SEMICOLON":I
    const/16 v46, 0x0

    .line 200
    .local v46, "state":I
    new-instance v43, Landroid/filterfw/io/PatternScanner;

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 202
    .local v43, "scanner":Landroid/filterfw/io/PatternScanner;
    const/16 v28, 0x0

    .line 203
    .local v28, "curClassName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 204
    .local v5, "curSourceFilterName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 205
    .local v6, "curSourcePortName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 206
    .local v7, "curTargetFilterName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 209
    .local v8, "curTargetPortName":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {v43 .. v43}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v3

    if-nez v3, :cond_7

    .line 210
    packed-switch v46, :pswitch_data_0

    goto :goto_0

    .line 212
    :pswitch_0
    const-string v3, "<command>"

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 213
    .local v29, "curCommand":Ljava/lang/String;
    const-string v3, "@import"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    const/16 v46, 0x1

    goto :goto_0

    .line 215
    :cond_0
    const-string v3, "@library"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    const/16 v46, 0x2

    goto :goto_0

    .line 217
    :cond_1
    const-string v3, "@filter"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    const/16 v46, 0x3

    goto :goto_0

    .line 219
    :cond_2
    const-string v3, "@connect"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 220
    const/16 v46, 0x8

    goto :goto_0

    .line 221
    :cond_3
    const-string v3, "@set"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 222
    const/16 v46, 0xd

    goto :goto_0

    .line 223
    :cond_4
    const-string v3, "@external"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 224
    const/16 v46, 0xe

    goto :goto_0

    .line 225
    :cond_5
    const-string v3, "@setting"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 226
    const/16 v46, 0xf

    goto :goto_0

    .line 228
    :cond_6
    new-instance v3, Landroid/filterfw/io/GraphIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Unknown command \'"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v48, "\'!"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 234
    .end local v29    # "curCommand":Ljava/lang/String;
    :pswitch_1
    const-string v3, "<package-name>"

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 235
    .local v37, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v4, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v4, v0, v1}, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const/16 v46, 0x10

    .line 237
    goto/16 :goto_0

    .line 241
    .end local v37    # "packageName":Ljava/lang/String;
    :pswitch_2
    const-string v3, "<library-name>"

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 242
    .local v35, "libraryName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v4, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v4, v0, v1}, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const/16 v46, 0x10

    .line 244
    goto/16 :goto_0

    .line 248
    .end local v35    # "libraryName":Ljava/lang/String;
    :pswitch_3
    const-string v3, "<class-name>"

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 249
    const/16 v46, 0x4

    .line 250
    goto/16 :goto_0

    .line 253
    :pswitch_4
    const-string v3, "<filter-name>"

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 254
    .local v30, "curFilterName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v4, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-direct {v4, v0, v1, v2}, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    const/16 v46, 0x5

    .line 256
    goto/16 :goto_0

    .line 260
    .end local v30    # "curFilterName":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v3, "{"

    move-object/from16 v0, v43

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    const/16 v46, 0x6

    .line 262
    goto/16 :goto_0

    .line 265
    :pswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v39

    .line 266
    .local v39, "params":Landroid/filterfw/core/KeyValueMap;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v4, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v4, v0, v1}, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    const/16 v46, 0x7

    .line 268
    goto/16 :goto_0

    .line 272
    .end local v39    # "params":Landroid/filterfw/core/KeyValueMap;
    :pswitch_7
    const-string/jumbo v3, "}"

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    const/16 v46, 0x0

    .line 274
    goto/16 :goto_0

    .line 277
    :pswitch_8
    const-string v3, "<source-filter-name>"

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 278
    const/16 v46, 0x9

    .line 279
    goto/16 :goto_0

    .line 282
    :pswitch_9
    const-string v3, "[<source-port-name>]"

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 283
    .local v41, "portString":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 284
    const/16 v46, 0xa

    .line 285
    goto/16 :goto_0

    .line 289
    .end local v41    # "portString":Ljava/lang/String;
    :pswitch_a
    const-string v3, "=>"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    const/16 v46, 0xb

    .line 291
    goto/16 :goto_0

    .line 294
    :pswitch_b
    const-string v3, "<target-filter-name>"

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 295
    const/16 v46, 0xc

    .line 296
    goto/16 :goto_0

    .line 299
    :pswitch_c
    const-string v3, "[<target-port-name>]"

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 300
    .restart local v41    # "portString":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    new-instance v3, Landroid/filterfw/io/TextGraphReader$ConnectCommand;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/filterfw/io/TextGraphReader$ConnectCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    const/16 v46, 0x10

    .line 306
    goto/16 :goto_0

    .line 310
    .end local v41    # "portString":Ljava/lang/String;
    :pswitch_d
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v26

    .line 311
    .local v26, "assignment":Landroid/filterfw/core/KeyValueMap;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    .line 312
    const/16 v46, 0x10

    .line 313
    goto/16 :goto_0

    .line 317
    .end local v26    # "assignment":Landroid/filterfw/core/KeyValueMap;
    :pswitch_e
    const-string v3, "<external-identifier>"

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 318
    .local v33, "externalName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/filterfw/io/TextGraphReader;->bindExternal(Ljava/lang/String;)V

    .line 319
    const/16 v46, 0x10

    .line 320
    goto/16 :goto_0

    .line 324
    .end local v33    # "externalName":Ljava/lang/String;
    :pswitch_f
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v45

    .line 325
    .local v45, "setting":Landroid/filterfw/core/KeyValueMap;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    .line 326
    const/16 v46, 0x10

    .line 327
    goto/16 :goto_0

    .line 331
    .end local v45    # "setting":Landroid/filterfw/core/KeyValueMap;
    :pswitch_10
    const-string v3, ";"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    const/16 v46, 0x0

    goto/16 :goto_0

    .line 338
    :cond_7
    const/16 v3, 0x10

    move/from16 v0, v46

    if-eq v0, v3, :cond_8

    if-eqz v46, :cond_8

    .line 339
    new-instance v3, Landroid/filterfw/io/GraphIOException;

    const-string v4, "Unexpected end of input!"

    invoke-direct {v3, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 341
    :cond_8
    return-void

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;
    .locals 24
    .param p1, "scanner"    # Landroid/filterfw/io/PatternScanner;
    .param p2, "endPattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v4, 0x0

    .line 354
    .local v4, "STATE_IDENTIFIER":I
    const/4 v3, 0x1

    .line 355
    .local v3, "STATE_EQUALS":I
    const/4 v6, 0x2

    .line 356
    .local v6, "STATE_VALUE":I
    const/4 v5, 0x3

    .line 358
    .local v5, "STATE_POST_VALUE":I
    const-string v21, "="

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 359
    .local v10, "equalsPattern":Ljava/util/regex/Pattern;
    const-string v21, ";"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    .line 360
    .local v17, "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v21, "[a-zA-Z]+[a-zA-Z0-9]*"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v20

    .line 361
    .local v20, "wordPattern":Ljava/util/regex/Pattern;
    const-string v21, "\'[^\']*\'|\\\"[^\\\"]*\\\""

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v19

    .line 362
    .local v19, "stringPattern":Ljava/util/regex/Pattern;
    const-string v21, "[0-9]+"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 363
    .local v12, "intPattern":Ljava/util/regex/Pattern;
    const-string v21, "[0-9]*\\.[0-9]+f?"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 364
    .local v11, "floatPattern":Ljava/util/regex/Pattern;
    const-string v21, "\\$[a-zA-Z]+[a-zA-Z0-9]"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 365
    .local v15, "referencePattern":Ljava/util/regex/Pattern;
    const-string/jumbo v21, "true|false"

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 367
    .local v7, "booleanPattern":Ljava/util/regex/Pattern;
    const/16 v18, 0x0

    .line 368
    .local v18, "state":I
    new-instance v13, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v13}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 369
    .local v13, "newVals":Landroid/filterfw/core/KeyValueMap;
    const/4 v8, 0x0

    .line 370
    .local v8, "curKey":Ljava/lang/String;
    const/4 v9, 0x0

    .line 372
    .local v9, "curValue":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v21

    if-nez v21, :cond_8

    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p2}, Landroid/filterfw/io/PatternScanner;->peek(Ljava/util/regex/Pattern;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 373
    :cond_0
    packed-switch v18, :pswitch_data_0

    goto :goto_0

    .line 375
    :pswitch_0
    const-string v21, "<identifier>"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 376
    const/16 v18, 0x1

    .line 377
    goto :goto_0

    .line 380
    :pswitch_1
    const-string v21, "="

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    const/16 v18, 0x2

    .line 382
    goto :goto_0

    .line 385
    :pswitch_2
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 386
    const/16 v21, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :goto_1
    const/16 v18, 0x3

    .line 407
    goto :goto_0

    .line 387
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 388
    const/16 v21, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 389
    .local v14, "refName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 392
    .local v16, "referencedObject":Ljava/lang/Object;
    :goto_2
    if-nez v16, :cond_3

    .line 393
    new-instance v21, Landroid/filterfw/io/GraphIOException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown object reference to \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 389
    .end local v16    # "referencedObject":Ljava/lang/Object;
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 396
    .restart local v16    # "referencedObject":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 397
    .end local v14    # "refName":Ljava/lang/String;
    .end local v16    # "referencedObject":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 398
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 399
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 400
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 401
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 402
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v8, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 404
    :cond_7
    new-instance v21, Landroid/filterfw/io/GraphIOException;

    const-string v22, "<value>"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 410
    :pswitch_3
    const-string v21, ";"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 417
    :cond_8
    if-eqz v18, :cond_9

    const/16 v21, 0x3

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 418
    new-instance v21, Landroid/filterfw/io/GraphIOException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unexpected end of assignments on line "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->lineNo()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 422
    :cond_9
    return-object v13

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 162
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    .line 163
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    .line 165
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    .line 166
    new-instance v0, Landroid/filterfw/core/FilterFactory;

    invoke-direct {v0}, Landroid/filterfw/core/FilterFactory;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    .line 167
    return-void
.end method


# virtual methods
.method public readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
    .locals 1
    .param p1, "graphString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Landroid/filterfw/core/FilterGraph;

    invoke-direct {v0}, Landroid/filterfw/core/FilterGraph;-><init>()V

    .line 150
    .local v0, "result":Landroid/filterfw/core/FilterGraph;
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    .line 151
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 152
    invoke-direct {p0, p1}, Landroid/filterfw/io/TextGraphReader;->parseString(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->applySettings()V

    .line 154
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->executeCommands()V

    .line 155
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    .line 157
    return-object v0
.end method

.method public readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
    .locals 3
    .param p1, "assignments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .prologue
    .line 345
    const-string v2, "\\s+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 346
    .local v0, "ignorePattern":Ljava/util/regex/Pattern;
    new-instance v1, Landroid/filterfw/io/PatternScanner;

    invoke-direct {v1, p1, v0}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 347
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v2

    return-object v2
.end method
