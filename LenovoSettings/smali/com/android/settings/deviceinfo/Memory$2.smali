.class Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 398
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 400
    const-string v5, "connected"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 402
    .local v3, "isUsbConnected":Z
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    iput-boolean v3, v5, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mIsUsbConnected:Z

    .line 403
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 405
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "usbFunction":Ljava/lang/String;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 407
    .local v1, "category":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1, v3, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->onUsbStateChanged(ZLjava/lang/String;)V

    goto :goto_0

    .line 410
    .end local v1    # "category":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 411
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 423
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isUsbConnected":Z
    .end local v4    # "usbFunction":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 414
    :cond_2
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 415
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 416
    .restart local v1    # "category":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->onMediaScannerFinished()V

    goto :goto_2

    .line 419
    .end local v1    # "category":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 420
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1
.end method
