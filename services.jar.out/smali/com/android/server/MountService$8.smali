.class Lcom/android/server/MountService$8;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1826
    iput-object p1, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    iput-object p3, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1829
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEvent: VolumeDiskInserted, start to mount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :try_start_0
    const-string v4, "ro.mtk_multi_patition"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$3600()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1834
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v4}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;)V

    .line 1835
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    # invokes: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/server/MountService;->access$4900(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v3

    .local v3, "rc":I
    if-eqz v3, :cond_0

    .line 1836
    const-string v4, "MountService"

    const-string v5, "Insertion mount failed (%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    :cond_0
    iget-object v4, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$3600()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1839
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v4}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)V

    .line 1840
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static {v4}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 1841
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->sendSDSwapIntent()V
    invoke-static {v4}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1845
    :cond_1
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1850
    :goto_0
    if-nez v3, :cond_4

    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->enableDefaultPathDialog()Z
    invoke-static {v4}, Lcom/android/server/MountService;->access$5000(Lcom/android/server/MountService;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1851
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.mediatek.storage.StorageDefaultPathDialog"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1852
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1853
    iget-object v4, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$3600()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1854
    const-string v4, "insert_otg"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1857
    :cond_2
    iget-object v4, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$3600()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1858
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1905
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "rc":I
    :cond_3
    :goto_1
    return-void

    .line 1846
    .restart local v3    # "rc":I
    :catch_0
    move-exception v0

    .line 1847
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1902
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "rc":I
    :catch_1
    move-exception v1

    .line 1903
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "MountService"

    const-string v5, "Failed to mount media on insertion"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1862
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v3    # "rc":I
    :cond_4
    :try_start_3
    const-string v4, "MountService"

    const-string v5, "Insertion mount failed (%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1865
    .end local v3    # "rc":I
    :cond_5
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v4}, Lcom/android/server/MountService;->isUsbMassStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1867
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    const-string v6, "ums"

    const/4 v7, 0x1

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1870
    :cond_6
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    # invokes: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/server/MountService;->access$4900(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "rc":I
    if-eqz v3, :cond_7

    .line 1871
    const-string v4, "MountService"

    const-string v5, "Insertion mount failed (%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_7
    iget-object v4, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$3600()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1874
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v4}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)V

    .line 1875
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static {v4}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 1876
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->sendSDSwapIntent()V
    invoke-static {v4}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1880
    :cond_8
    const-wide/16 v4, 0x1f4

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1885
    :goto_2
    if-nez v3, :cond_a

    :try_start_5
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->enableDefaultPathDialog()Z
    invoke-static {v4}, Lcom/android/server/MountService;->access$5000(Lcom/android/server/MountService;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1886
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.mediatek.storage.StorageDefaultPathDialog"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1887
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1888
    iget-object v4, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$3600()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1889
    const-string v4, "insert_otg"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1892
    :cond_9
    iget-object v4, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$3600()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1893
    iget-object v4, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1881
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    .line 1882
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1897
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_a
    const-string v4, "MountService"

    const-string v5, "Insertion mount failed (%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method
