﻿<%@ Page Title="Registrazione" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <table class="tbl2">
        <tr>
            <td>
        <h2><%: Title %></h2><hr />

    <hgroup class="title">
    </hgroup>
                <asp:Panel ID="PnlIni" Visible="true" runat="server">
                    <h2>Per registrarti devi accettare l'informativa sulla privacy</h2><br />
                            <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" runat="server">Visualizza l'informativa sulla privacy</asp:LinkButton>
                                    <asp:Panel Visible="false" ID="PnlPri" runat="server">
                                        <p>
                                            INFORMATIVA AI SENSI DELL’ART. 13 D.LG. 196/2003</p>
                                        <p>
                                            Ai sensi e per gli effetti del D.LG 196/2003 i dati personali raccolti con questo form saranno inseriti in un data base e potranno essere utilizzati soltanto per attività di diffusione di materiale editoriale e/o promozionale di CHIESA SANTUARIO &quot;S.MARIA DEL FONTE&quot;. I dati non verranno comunicati ad altri, se non quando autorizzati espressamente dall’utente, e saranno trattati esclusivamente per gli scopi sopra descritti e richiesti dall’utente.</p>
                                        <p>
                                            Titolare e responsabile del trattamento dei dati è<br /> CHIESA SANTUARIO &quot;S.MARIA DEL FONTE&quot;<br /> Sede Legale in Caravaggio, Viale papa Giovanni XXIII CAP 24043<br /> Partita Iva 02296420165 Codice Fiscale 84001970163<br /> nella persona del Legale Rappresentante.<br /> I dati raccolti saranno inseriti in una anagrafica e saranno utilizzati soltanto per i seguenti scopi:
                                            <br />
                                            • Diffusione di notiziari informativi (newsletter)
                                            <br />
                                            • Invio di informazioni riguardanti le attività di CHIESA SANTUARIO &quot;S.MARIA DEL FONTE&quot;.</p>
                                        <p>
                                            Trattandosi di dati pubblici e non sensibili, essi non sono sottoposti al preventivo consenso dell’interessato.<br /> In ogni caso i dati non verranno comunicati a soggetti terzi (se non per attività espressamente autorizzate dell’utente) e saranno trattati esclusivamente per fornire il servizio descritto in questo sito, fino a quando non riceveremo la richiesta di cessazione dall’utilizzo del servizio. In questo caso i dati verranno distrutti e non ne verrà conservata copia.<br /> Il conferimento dei dati è facoltativo, ma in loro assenza non sarà possibile fornire il servizio o i servizi in questione.<br /> L’interessato ha – in ogni caso – il diritto a chiedere la cancellazione/rettifica e, più in generale, tutti i diritti indicati nell’art. 7 del Decreto che riportiamo integralmente:</p>
                                        <p>
                                            Art. 7<br /> 1. L’interessato ha il diritto di ottenere la conferma dell’esistenza o meno di dati personali che lo riguardano, anche se non ancora registrati, e la loro comunicazione in forma intelligibile.<br /> 2. L’interessato ha il diritto di ottenere informazioni relative:<br /> a. all’origine dei dati personali<br /> b. alle modalità e finalità del trattamento<br /> c. alla logica applicata in caso di trattamento effettuato con l’ausilio di strumenti elettronici<br /> d. agli estremi identificativi del titolare, dei responsabili e del rappresentante designato ai sensi dell’art. 5, comma 2<br /> e. ai soggetti o delle categorie di soggetti ai quali i dati personali possono essere comunicati o che possono venirne a conoscenza in qualità di rappresentante designato nel territorio dello Stato, di responsabili o incaricati<br /> L’interessato ha diritto di ottenere:<br /> . l’aggiornamento, la rettificazione ovvero, quando vi ha interesse, l’integrazione dei dati<br /> a. la 
                                            cancellazione, la trasformazione in forma anonima o il blocco dei dati trattati in violazione della legge, compresi quelli di cui non è necessaria la conservazione in relazione agli scopi per i quali i dati sono stati raccolti o successivamente trattati<br /> b. l’attestazione che le operazioni di cui alle lettere a) e b) sono state portate a conoscenza, anche per quanto riguarda il loro contenuto, di coloro ai quali i dati sono stati comunicati o diffusi, eccettuando il caso in cui tale adempimento si rivela impossibile o comporta un impiego di mezzi manifestamente sproporzionato rispetto al diritto tutelato.<br /> L’interessato ha il diritto di opporsi, in tutto o in parte:<br /> . per motivi legittimi al trattamento dei dati personali che lo riguardano, ancorchè pertinenti allo scopo della raccolta<br /> a. al trattamento di dati personali che lo riguardano a fini di invio di materiale pubblicitario o di vendita diretta o per il compimento di ricerche di mercato o di comunicazione 
                                            commerciale</p>
                                        <p>
                                            COLLEGAMENTI A SITI E A SERVIZI DI TERZI</p>
                                        <p>
                                            All’interno del Sito e/o degli altri messaggi e/o comunicazioni che CHIESA SANTUARIO &quot;S.MARIA DEL FONTE&quot; offre all’utente, potranno essere contenuti banner, messaggi pubblicitari e/o inserzioni di soggetti terzi, in qualità di collaboratori di CHIESA SANTUARIO &quot;S.MARIA DEL FONTE&quot;.</p>
                                        <p>
                                            CHIESA SANTUARIO &quot;S.MARIA DEL FONTE&quot; informa gli utenti che aderendo alle proposte di terzi, l’utente potrà acquistare beni o servizi e accedere a pagine multimediali di esclusiva pertinenza di tali terzi, i quali si trovano al di fuori del controllo di CHIESA SANTUARIO &quot;S.MARIA DEL FONTE&quot; che non sono in alcun modo tenuti al rispetto di quanto previsto nella presente informativa.</p>
                                    </asp:Panel>
                            <hr />
                            <asp:Button ID="LinkButton1" Visible="false" OnClick="LinkButton1_Click" runat="server" Text="Autorizza il trattamento dei dati e registrati"> </asp:Button>
                </asp:Panel>
   <asp:CreateUserWizard Visible="false" runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                <ContentTemplate>
                    <p class="message-info">
                        La lunghezza delle password deve essere di almeno <%: Membership.MinRequiredPasswordLength %> caratteri<br />
                    </p>
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                    <fieldset>
                        <legend>Form di registrazione</legend>
                        <ol>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="UserName">Nome utente </asp:Label>
                                <asp:TextBox runat="server" ID="UserName" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="Il campo Nome utente è obbligatorio." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Email">Indirizzo di posta elettronica</asp:Label>
                                <asp:TextBox runat="server" ID="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="Il campo Indirizzo di posta elettronica è obbligatorio." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="Il campo Password è obbligatorio." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Conferma password</asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="Il campo Conferma password è obbligatorio." />
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="La password e la password di conferma non corrispondono." />
                            </li>
                        </ol>
                        <asp:Button runat="server" CommandName="MoveNext" Text="Esegui registrazione" />
                    </fieldset>
                </ContentTemplate>
                <CustomNavigationTemplate />
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
            </td>
        </tr>
    </table>

</asp:Content>