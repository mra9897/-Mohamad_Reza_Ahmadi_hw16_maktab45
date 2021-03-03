const _error = require('./Controller');

const Company = require('../models/Company');

const create = (req, res) => {
    const data = req.body;
    if (!data) return _error("parameters not set");

    const validate = _validate(data);
    if (validate.length > 0) return _error(validate.join('\n'));

    const newCompany = new Company(data);

    console.log(data);
    return newCompany.save((err, company) => {
        if (err) res.json(_error(err.message));
        res.json({result: 1});
    });
}
const all = (req, res) => {
    return Company.find({}, (err, companies) => {
        if (err) res.json(_error(err.message));
        if(typeof req.params.type === "undefined" || req.params.type === "view")
            res.render('index', {page: "main", data: companies});
        else
            res.json(companies);
    });
}
const single = (req, res) => {
    const id = req.params.id;
    // if (!id) return res.json(_error("id not set"));
    if (!id) return res.render('index', {page: 'single'});
    return Company.find({_id: id}, (err, company) => {
        if (err) res.json(_error(err.message));
        if(typeof req.params.type === "undefined" || req.params.type === "view")
            res.render('index', {page: "single", data: company[0]});
        else
            res.json(company);

    });
}
const update = (req, res) => {
    const data = req.body;
    const id = req.params.id;
    if (!data) res.json(_error("parameters not set"));
    if (!id) res.json(_error("id not set"));

    return Company.updateOne({_id: id}, data, (err, company) => {
        if (err) res.json(_error(err.message));
        res.json({result: company.ok});
    });
}
const remove = (req, res) => {
    const id = req.params.id;
    if (!id) res.json(_error("id not set"));
    return Company.deleteOne({_id: id}, (err, company) => {
        if (err) res.json(_error(err.message));
        res.json({result: company.ok});
    });
}
const _validate = data => {
    const errors = [];
    if (!data.name) errors.push("company name is require");
    if (!data.register_code) errors.push("register code is required");
    if (!data.register_date) errors.push("register date is required");
    console.log(data);
    return errors;
}

module.exports = {all, single, create, update, remove};