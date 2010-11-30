[% INCLUDE header.tpl %]
    <div id="main">
    	<div id="overview">
			[% "Search:" | l10n %]
			<form name="search" method="GET" action="vboxadm.pl">
			<input type="hidden" name="rm" value="domains" />
			<input type="textbox" name="search" size="10" value="[% search %]" />
			</form>
		</div>
		[% FOREACH line IN domains %]
		[% IF loop.first %]
		<table class="sortable hilight">
			<thead>
			<tr>
				<th>[% "Domain" | l10n %]</th>
				<th>[% "Aliases" | l10n %]</th>
				<th>[% "Mailboxes" | l10n %]</th>
				<th>[% "Alias-Domains" | l10n %]</th>
				<th>[% "Active" | l10n %]</th>
				<th></th>
			</tr>
			</thead>
			<tbody>
		[% END %]
			<tr>
				<td>
					[% line.name | highlight(search) %]
				</td>
				<td>
					[% line.num_aliases %]
				</td>
				<td>
					[% line.num_mailboxes %]
				</td>
				<td>
					[% line.num_domainaliases %]
				</td>
				<td>
					[% IF line.is_active == 1 %]
					<a href="vboxadm.pl?rm=update_domain&domain_id=[% line.id %]&is_active=0">[% "Yes" | l10n %]</a>
					[% ELSE %]
					<a href="vboxadm.pl?rm=update_domain&domain_id=[% line.id %]&is_active=1">[% "No" | l10n %]</a>
					[% END %]
				</td>
				<td>
					<a onClick="if(confirm('Do you really want to delete the Domain [% line.name %]?')) return true; else return false;" href="vboxadm.pl?rm=remove_domain&domain_id=[% line.id %]">del</a>
				</td>
			</tr>
		[% IF loop.last %]
		</tbody>
		<tfoot>
		</tfoot>
		</table>
		[% END %]
		[% END %]
		<br />
		<a href="vboxadm.pl?rm=create_domain">Add Domain</a>
    </div>
[% INCLUDE footer.tpl %]
