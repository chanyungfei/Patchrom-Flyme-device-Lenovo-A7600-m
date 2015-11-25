.class public Lcom/mediatek/simservs/client/policy/ForwardTo;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "ForwardTo.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "forward-to"

.field static final TAG_NOTIFY_CALLER:Ljava/lang/String; = "notify-caller"

.field static final TAG_TARGET:Ljava/lang/String; = "target"


# instance fields
.field public mNotifyCaller:Z

.field public mTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .param p5, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 55
    invoke-virtual {p0, p5}, Lcom/mediatek/simservs/client/policy/ForwardTo;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "forward-to"

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 8
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v7, 0x0

    .line 65
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    .line 66
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string v5, "target"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 67
    .local v1, "forwardToNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_2

    .line 68
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 69
    .local v4, "targetElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    .line 78
    .end local v4    # "targetElement":Lorg/w3c/dom/Element;
    :cond_0
    :goto_0
    const-string v5, "notify-caller"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 79
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_3

    .line 80
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 81
    .local v3, "notifyCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "notifyCaller":Ljava/lang/String;
    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 91
    .end local v2    # "notifyCaller":Ljava/lang/String;
    .end local v3    # "notifyCallerElement":Lorg/w3c/dom/Element;
    :cond_1
    :goto_1
    return-void

    .line 71
    :cond_2
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "target"

    invoke-interface {v0, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 72
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_0

    .line 73
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 74
    .restart local v4    # "targetElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    goto :goto_0

    .line 84
    .end local v4    # "targetElement":Lorg/w3c/dom/Element;
    :cond_3
    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v6, "notify-caller"

    invoke-interface {v0, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_1

    .line 86
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 87
    .restart local v3    # "notifyCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 88
    .restart local v2    # "notifyCaller":Ljava/lang/String;
    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    goto :goto_1
.end method

.method public isNotifyCaller()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    return v0
.end method

.method public setNotifyCaller(Z)V
    .locals 0
    .param p1, "notifyCaller"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 118
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 4
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 100
    const-string v3, "forward-to"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 102
    .local v1, "forwardElement":Lorg/w3c/dom/Element;
    const-string v3, "target"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 103
    .local v0, "allowElement":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 104
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 106
    const-string v3, "notify-caller"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 107
    .local v2, "notifyCallerElement":Lorg/w3c/dom/Element;
    iget-boolean v3, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    if-eqz v3, :cond_0

    const-string v3, "true"

    :goto_0
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 108
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 109
    return-object v1

    .line 107
    :cond_0
    const-string v3, "false"

    goto :goto_0
.end method
