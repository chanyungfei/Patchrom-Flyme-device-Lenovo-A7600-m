.class Lcom/android/server/wifi/WifiStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 9928
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private sendClientsChangedBroadcast()V
    .locals 3

    .prologue
    .line 9930
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9931
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9932
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 9933
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 10

    .prologue
    .line 9937
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9938
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$33902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9939
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$34000()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 9940
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$34000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 9941
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9942
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$34100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPluggedType:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$34200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    if-nez v1, :cond_1

    .line 9943
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$15800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$34300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 9944
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set alarm for enter TetheredState, mDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$34100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9945
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$15800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$34100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    int-to-long v6, v3

    const-wide/32 v8, 0x493e0

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$34300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 9949
    :cond_1
    const-string v1, "persist.radio.hotspot.probe.rq"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9950
    .local v0, "request":Ljava/lang/String;
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist.radio.hotspot.probe.rq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9951
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9952
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$34400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setApProbeRequestEnabledCommand(Z)Z

    .line 9957
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$34400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotOptimization:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$34500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setHotspotOptimization(Z)Z

    .line 9958
    return-void

    .line 9941
    .end local v0    # "request":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 10085
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$34100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 10086
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$15800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$34300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 10088
    :cond_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$34000()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 10089
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$34000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10090
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10091
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 10094
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$34400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setHotspotOptimization(Z)Z

    .line 10095
    return-void

    .line 10090
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 9961
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v9, v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 9963
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 10078
    const/4 v9, 0x0

    .line 10080
    :goto_0
    return v9

    .line 9965
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;

    .line 9966
    .local v7, "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, v7, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$33300(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 9967
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "Tethering reports wifi as untethered!, shut down soft Ap"

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9968
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 9969
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 9971
    :cond_0
    const/4 v9, 0x1

    goto :goto_0

    .line 9973
    .end local v7    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$500()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "Untethering before stopping AP"

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9974
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v10, 0xa

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 9975
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->stopTethering()V
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$34600(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9976
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$34700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$34800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9978
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v9, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$34900(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 10080
    :cond_2
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 9981
    :sswitch_2
    const-string v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AP STA CONNECTED:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9982
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$33904(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 9983
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 9984
    .local v2, "address":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$34000()Ljava/util/HashMap;

    move-result-object v10

    monitor-enter v10

    .line 9985
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$34000()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 9986
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$34000()Ljava/util/HashMap;

    move-result-object v9

    new-instance v11, Landroid/net/wifi/HotspotClient;

    const/4 v12, 0x0

    invoke-direct {v11, v2, v12}, Landroid/net/wifi/HotspotClient;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v9, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9988
    :cond_3
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9989
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$34100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$33900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 9990
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$15800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$34300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 9992
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    goto :goto_1

    .line 9988
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 9995
    .end local v2    # "address":Ljava/lang/String;
    :sswitch_3
    const-string v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AP STA DISCONNECTED:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9996
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # --operator for: Lcom/android/server/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$33906(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 9997
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 9998
    .restart local v2    # "address":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$34000()Ljava/util/HashMap;

    move-result-object v10

    monitor-enter v10

    .line 9999
    :try_start_2
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$34000()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/HotspotClient;

    .line 10000
    .local v3, "client":Landroid/net/wifi/HotspotClient;
    if-eqz v3, :cond_5

    iget-boolean v9, v3, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-nez v9, :cond_5

    .line 10001
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$34000()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10003
    :cond_5
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10004
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$34100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPluggedType:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$34200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    if-nez v9, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$33900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    if-nez v9, :cond_6

    .line 10005
    const-string v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set alarm for no client, mDuration:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$34100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10006
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$15800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$34100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v11

    int-to-long v14, v11

    const-wide/32 v16, 0x493e0

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$34300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v9, v10, v12, v13, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 10010
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    goto/16 :goto_1

    .line 10003
    .end local v3    # "client":Landroid/net/wifi/HotspotClient;
    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 10013
    .end local v2    # "address":Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WpsInfo;

    .line 10014
    .local v8, "wpsConfig":Landroid/net/wifi/WpsInfo;
    iget v9, v8, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v9, :pswitch_data_0

    .line 10031
    const-string v9, "WifiStateMachine"

    const-string v10, "Invalid setup for WPS!"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 10016
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mStartApWps:Z
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$35002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10017
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$34400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->startApWpsPbcCommand()Z

    goto/16 :goto_1

    .line 10020
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$34400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    iget-object v10, v8, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10021
    .local v6, "pin":Ljava/lang/String;
    const-string v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Check pin result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10022
    if-eqz v6, :cond_7

    .line 10023
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$34400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/server/wifi/WifiNative;->startApWpsWithPinFromDeviceCommand(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 10025
    :cond_7
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.net.wifi.WIFI_WPS_CHECK_PIN_FAIL"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10026
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v9, 0x4000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10027
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 10036
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "pin":Ljava/lang/String;
    .end local v8    # "wpsConfig":Landroid/net/wifi/WpsInfo;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$34400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/HotspotClient;

    iget-object v9, v9, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/android/server/wifi/WifiNative;->blockClientCommand(Ljava/lang/String;)Z

    move-result v5

    .line 10037
    .local v5, "ok":Z
    if-eqz v5, :cond_9

    .line 10038
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$34000()Ljava/util/HashMap;

    move-result-object v10

    monitor-enter v10

    .line 10039
    :try_start_4
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$34000()Ljava/util/HashMap;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/HotspotClient;

    iget-object v9, v9, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/HotspotClient;

    .line 10040
    .restart local v3    # "client":Landroid/net/wifi/HotspotClient;
    if-eqz v3, :cond_8

    .line 10041
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 10045
    :goto_2
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 10046
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 10050
    .end local v3    # "client":Landroid/net/wifi/HotspotClient;
    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$35100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    if-eqz v5, :cond_a

    const/4 v9, 0x1

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v9}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10043
    .restart local v3    # "client":Landroid/net/wifi/HotspotClient;
    :cond_8
    :try_start_5
    const-string v11, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to get "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/HotspotClient;

    iget-object v9, v9, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 10045
    .end local v3    # "client":Landroid/net/wifi/HotspotClient;
    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9

    .line 10048
    :cond_9
    const-string v10, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to block "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/HotspotClient;

    iget-object v9, v9, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 10050
    :cond_a
    const/4 v9, -0x1

    goto :goto_4

    .line 10054
    .end local v5    # "ok":Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$34400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/HotspotClient;

    iget-object v9, v9, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/android/server/wifi/WifiNative;->unblockClientCommand(Ljava/lang/String;)Z

    move-result v5

    .line 10055
    .restart local v5    # "ok":Z
    if-eqz v5, :cond_b

    .line 10056
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$34000()Ljava/util/HashMap;

    move-result-object v10

    monitor-enter v10

    .line 10057
    :try_start_6
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$34000()Ljava/util/HashMap;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/HotspotClient;

    iget-object v9, v9, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10058
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 10059
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 10063
    :goto_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$35100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    if-eqz v5, :cond_c

    const/4 v9, 0x1

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v9}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10058
    :catchall_3
    move-exception v9

    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v9

    .line 10061
    :cond_b
    const-string v10, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to unblock "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/HotspotClient;

    iget-object v9, v9, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 10063
    :cond_c
    const/4 v9, -0x1

    goto :goto_6

    .line 10066
    .end local v5    # "ok":Z
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$34400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v10

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_d

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v10, v9}, Lcom/android/server/wifi/WifiNative;->setApProbeRequestEnabledCommand(Z)Z

    move-result v5

    .line 10067
    .restart local v5    # "ok":Z
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$35100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    if-eqz v5, :cond_e

    const/4 v9, 0x1

    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v9}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10066
    .end local v5    # "ok":Z
    :cond_d
    const/4 v9, 0x0

    goto :goto_7

    .line 10067
    .restart local v5    # "ok":Z
    :cond_e
    const/4 v9, -0x1

    goto :goto_8

    .line 10070
    .end local v5    # "ok":Z
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mStartApWps:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$35000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 10071
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.net.wifi.WIFI_HOTSPOT_OVERLAP"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10072
    .restart local v4    # "intent":Landroid/content/Intent;
    const/high16 v9, 0x4000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10073
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 10074
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mStartApWps:Z
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$35002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 9963
    nop

    :sswitch_data_0
    .sparse-switch
        0x20018 -> :sswitch_1
        0x2001d -> :sswitch_0
        0x200aa -> :sswitch_5
        0x200ab -> :sswitch_6
        0x200ac -> :sswitch_4
        0x200ae -> :sswitch_7
        0x2400a -> :sswitch_8
        0x24029 -> :sswitch_3
        0x2402a -> :sswitch_2
    .end sparse-switch

    .line 10014
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
