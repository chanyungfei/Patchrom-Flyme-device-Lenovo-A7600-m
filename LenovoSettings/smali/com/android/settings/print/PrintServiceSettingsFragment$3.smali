.class Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$3;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;Z)Z
    .locals 4
    .param p1, "toggleSwitch"    # Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 291
    if-eqz p2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->access$500(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    invoke-virtual {p1, v1}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 294
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_CHECKED"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 295
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->showDialog(I)V
    invoke-static {v1, v0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->access$600(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;I)V

    .line 302
    :goto_0
    return v0

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->access$700(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->access$800(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    .line 302
    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->access$700(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v1}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->access$800(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    goto :goto_1
.end method