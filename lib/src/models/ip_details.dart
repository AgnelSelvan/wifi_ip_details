class IPDetails {
  String? ip;
  String? network;
  String? version;
  String? city;
  String? region;
  String? regionCode;
  String? country;
  String? countryName;
  String? countryCode;
  String? countryCodeIso3;
  String? countryCapital;
  String? countryTld;
  String? continentCode;
  bool? inEu;
  String? postal;
  double? latitude;
  double? longitude;
  String? timezone;
  String? utcOffset;
  String? countryCallingCode;
  String? currency;
  String? currencyName;
  String? languages;
  int? countryArea;
  int? countryPopulation;
  String? asn;
  String? org;

  IPDetails(
      {this.ip,
      this.network,
      this.version,
      this.city,
      this.region,
      this.regionCode,
      this.country,
      this.countryName,
      this.countryCode,
      this.countryCodeIso3,
      this.countryCapital,
      this.countryTld,
      this.continentCode,
      this.inEu,
      this.postal,
      this.latitude,
      this.longitude,
      this.timezone,
      this.utcOffset,
      this.countryCallingCode,
      this.currency,
      this.currencyName,
      this.languages,
      this.countryArea,
      this.countryPopulation,
      this.asn,
      this.org});

  IPDetails.fromJson(Map<String, dynamic> json) {
    ip = json['ip'];
    network = json['network'];
    version = json['version'];
    city = json['city'];
    region = json['region'];
    regionCode = json['region_code'];
    country = json['country'];
    countryName = json['country_name'];
    countryCode = json['country_code'];
    countryCodeIso3 = json['country_code_iso3'];
    countryCapital = json['country_capital'];
    countryTld = json['country_tld'];
    continentCode = json['continent_code'];
    inEu = json['in_eu'];
    postal = json['postal'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    timezone = json['timezone'];
    utcOffset = json['utc_offset'];
    countryCallingCode = json['country_calling_code'];
    currency = json['currency'];
    currencyName = json['currency_name'];
    languages = json['languages'];
    countryArea = json['country_area'];
    countryPopulation = json['country_population'];
    asn = json['asn'];
    org = json['org'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ip'] = ip;
    data['network'] = network;
    data['version'] = version;
    data['city'] = city;
    data['region'] = region;
    data['region_code'] = regionCode;
    data['country'] = country;
    data['country_name'] = countryName;
    data['country_code'] = countryCode;
    data['country_code_iso3'] = countryCodeIso3;
    data['country_capital'] = countryCapital;
    data['country_tld'] = countryTld;
    data['continent_code'] = continentCode;
    data['in_eu'] = inEu;
    data['postal'] = postal;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['timezone'] = timezone;
    data['utc_offset'] = utcOffset;
    data['country_calling_code'] = countryCallingCode;
    data['currency'] = currency;
    data['currency_name'] = currencyName;
    data['languages'] = languages;
    data['country_area'] = countryArea;
    data['country_population'] = countryPopulation;
    data['asn'] = asn;
    data['org'] = org;
    return data;
  }

  @override
  String toString() {
    final value = """
      ip: $ip,
      network: $network,
      version: $version,
      city: $city,
      region: $region,
      regionCode: $regionCode,
      country: $country,
      countryName: $countryName,
      countryCode: $countryCode,
      countryCodeIso3: $countryCodeIso3,
      countryCapital: $countryCapital,
      countryTld: $countryTld,
      continentCode: $continentCode,
      inEu: $inEu,
      postal: $postal,
      latitude: $latitude,
      longitude: $longitude,
      timezone: $timezone,
      utcOffset: $utcOffset,
      countryCallingCode: $countryCallingCode,
      currency: $currency,
      currencyName: $currencyName,
      languages: $languages,
      countryArea: $countryArea,
      countryPopulation: $countryPopulation,
      asn: $asn,
      org: $org,
    """;
    return value;
  }
}
