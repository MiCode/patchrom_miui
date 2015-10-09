.class public Landroid/sax/Element;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field children:Landroid/sax/Children;

.field final depth:I

.field endElementListener:Landroid/sax/EndElementListener;

.field endTextElementListener:Landroid/sax/EndTextElementListener;

.field final localName:Ljava/lang/String;

.field final parent:Landroid/sax/Element;

.field requiredChilden:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sax/Element;",
            ">;"
        }
    .end annotation
.end field

.field startElementListener:Landroid/sax/StartElementListener;

.field final uri:Ljava/lang/String;

.field visited:Z


# direct methods
.method constructor <init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "parent"    # Landroid/sax/Element;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "depth"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/sax/Element;->parent:Landroid/sax/Element;

    .line 50
    iput-object p2, p0, Landroid/sax/Element;->uri:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Landroid/sax/Element;->localName:Ljava/lang/String;

    .line 52
    iput p4, p0, Landroid/sax/Element;->depth:I

    .line 53
    return-void
.end method

.method static toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p1    # "localName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p1    # "localName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method checkRequiredChildren(Lorg/xml/sax/Locator;)V
    .locals 6
    .param p1, "locator"    # Lorg/xml/sax/Locator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v2, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    .line 192
    .local v2, "requiredChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sax/Element;>;"
    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 194
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sax/Element;

    .line 195
    .local v0, "child":Landroid/sax/Element;
    iget-boolean v3, v0, Landroid/sax/Element;->visited:Z

    if-nez v3, :cond_0

    .line 196
    new-instance v3, Landroid/sax/BadXmlException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Element named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is missing required"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " child element named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v3

    .line 193
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 203
    .end local v0    # "child":Landroid/sax/Element;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public getChild(Ljava/lang/String;)Landroid/sax/Element;
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This element already has an end text element listener. It cannot have children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Landroid/sax/Children;

    invoke-direct {v0}, Landroid/sax/Children;-><init>()V

    iput-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    .line 76
    :cond_1
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    invoke-virtual {v0, p0, p1, p2}, Landroid/sax/Children;->getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    return-object v0
.end method

.method public requireChild(Ljava/lang/String;)Landroid/sax/Element;
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/sax/Element;->requireChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    return-object v0
.end method

.method public requireChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .line 97
    .local v0, "child":Landroid/sax/Element;
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    .line 99
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method resetRequiredChildren()V
    .locals 4

    .prologue
    .line 179
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    .line 180
    .local v1, "requiredChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sax/Element;>;"
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 182
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sax/Element;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/sax/Element;->visited:Z

    .line 181
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 185
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setElementListener(Landroid/sax/ElementListener;)V
    .locals 0
    .param p1, "elementListener"    # Landroid/sax/ElementListener;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 114
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 115
    return-void
.end method

.method public setEndElementListener(Landroid/sax/EndElementListener;)V
    .locals 2
    .param p1, "endElementListener"    # Landroid/sax/EndElementListener;

    .prologue
    .line 141
    iget-object v0, p0, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "End element listener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iput-object p1, p0, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    .line 146
    return-void
.end method

.method public setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
    .locals 2
    .param p1, "endTextElementListener"    # Landroid/sax/EndTextElementListener;

    .prologue
    .line 153
    iget-object v0, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "End text element listener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This element already has children. It cannot have an end text element listener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    iput-object p1, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    .line 164
    return-void
.end method

.method public setStartElementListener(Landroid/sax/StartElementListener;)V
    .locals 2
    .param p1, "startElementListener"    # Landroid/sax/StartElementListener;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Start element listener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iput-object p1, p0, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    .line 135
    return-void
.end method

.method public setTextElementListener(Landroid/sax/TextElementListener;)V
    .locals 0
    .param p1, "elementListener"    # Landroid/sax/TextElementListener;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 122
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Landroid/sax/Element;->uri:Ljava/lang/String;

    iget-object v1, p0, Landroid/sax/Element;->localName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/sax/Element;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
