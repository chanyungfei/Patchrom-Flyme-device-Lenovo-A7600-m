.class Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$1;
.super Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->access$000(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)V

    .line 90
    return-void
.end method
