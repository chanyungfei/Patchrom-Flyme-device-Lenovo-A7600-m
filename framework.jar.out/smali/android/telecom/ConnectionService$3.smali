.class Landroid/telecom/ConnectionService$3;
.super Landroid/telecom/Conference$Listener;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0}, Landroid/telecom/Conference$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/telecom/Conference;I)V
    .locals 5
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "capabilities"    # I

    .prologue
    .line 447
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$2500(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 448
    .local v0, "id":Ljava/lang/String;
    const-string v1, "call capabilities: conference: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Landroid/telecom/PhoneCapabilities;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setCallCapabilities(Ljava/lang/String;I)V

    .line 451
    return-void
.end method

.method public onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V
    .locals 3
    .param p1, "conference"    # Landroid/telecom/Conference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p2, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$2500(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->createConnectionIdList(Ljava/util/List;)Ljava/util/List;
    invoke-static {v2, p2}, Landroid/telecom/ConnectionService;->access$2600(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    .line 438
    return-void
.end method

.method public onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 426
    return-void
.end method

.method public onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 430
    return-void
.end method

.method public onDestroyed(Landroid/telecom/Conference;)V
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 442
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    # invokes: Landroid/telecom/ConnectionService;->removeConference(Landroid/telecom/Conference;)V
    invoke-static {v0, p1}, Landroid/telecom/ConnectionService;->access$2700(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V

    .line 443
    return-void
.end method

.method public onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 420
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$2500(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 421
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    .line 422
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Conference;II)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 404
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$2500(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    .local v0, "id":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 416
    :goto_0
    return-void

    .line 407
    :pswitch_0
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setActive(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :pswitch_1
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    # getter for: Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setOnHold(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
